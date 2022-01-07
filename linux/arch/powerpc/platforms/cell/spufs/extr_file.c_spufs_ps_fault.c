
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {unsigned long pgoff; int address; TYPE_3__* vma; } ;
struct spu_context {scalar_t__ state; TYPE_4__* spu; int run_wq; } ;
struct TYPE_11__ {TYPE_2__* mm; } ;
struct TYPE_10__ {unsigned long problem_phys; } ;
struct TYPE_9__ {TYPE_1__* vm_file; } ;
struct TYPE_8__ {int mmap_sem; } ;
struct TYPE_7__ {struct spu_context* private_data; } ;


 unsigned long PAGE_SHIFT ;
 scalar_t__ SPU_STATE_RUNNABLE ;
 scalar_t__ SPU_STATE_SAVED ;
 int VM_FAULT_NOPAGE ;
 int VM_FAULT_SIGBUS ;
 TYPE_5__* current ;
 int down_read (int *) ;
 scalar_t__ fatal_signal_pending (TYPE_5__*) ;
 int get_spu_context (struct spu_context*) ;
 int put_spu_context (struct spu_context*) ;
 scalar_t__ spu_acquire (struct spu_context*) ;
 int spu_context_nospu_trace (int ,struct spu_context*) ;
 int spu_context_trace (int ,struct spu_context*,TYPE_4__*) ;
 int spu_release (struct spu_context*) ;
 int spufs_ps_fault__enter ;
 int spufs_ps_fault__insert ;
 int spufs_ps_fault__sleep ;
 int spufs_ps_fault__wake ;
 int spufs_wait (int ,int) ;
 int up_read (int *) ;
 int vmf_insert_pfn (TYPE_3__*,int ,unsigned long) ;

__attribute__((used)) static vm_fault_t spufs_ps_fault(struct vm_fault *vmf,
        unsigned long ps_offs,
        unsigned long ps_size)
{
 struct spu_context *ctx = vmf->vma->vm_file->private_data;
 unsigned long area, offset = vmf->pgoff << PAGE_SHIFT;
 int err = 0;
 vm_fault_t ret = VM_FAULT_NOPAGE;

 spu_context_nospu_trace(spufs_ps_fault__enter, ctx);

 if (offset >= ps_size)
  return VM_FAULT_SIGBUS;

 if (fatal_signal_pending(current))
  return VM_FAULT_SIGBUS;






 get_spu_context(ctx);
 if (spu_acquire(ctx))
  goto refault;

 if (ctx->state == SPU_STATE_SAVED) {
  up_read(&current->mm->mmap_sem);
  spu_context_nospu_trace(spufs_ps_fault__sleep, ctx);
  err = spufs_wait(ctx->run_wq, ctx->state == SPU_STATE_RUNNABLE);
  spu_context_trace(spufs_ps_fault__wake, ctx, ctx->spu);
  down_read(&current->mm->mmap_sem);
 } else {
  area = ctx->spu->problem_phys + ps_offs;
  ret = vmf_insert_pfn(vmf->vma, vmf->address,
    (area + offset) >> PAGE_SHIFT);
  spu_context_trace(spufs_ps_fault__insert, ctx, ctx->spu);
 }

 if (!err)
  spu_release(ctx);

refault:
 put_spu_context(ctx);
 return ret;
}
