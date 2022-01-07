
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_start; int vm_end; int vm_page_prot; int vm_flags; struct binder_proc* vm_private_data; } ;
struct binder_proc {int pid; } ;


 int BINDER_DEBUG_OPEN_CLOSE ;
 int SZ_1K ;
 int binder_debug (int ,char*,int ,int,int,int,int ,unsigned long) ;
 scalar_t__ pgprot_val (int ) ;

__attribute__((used)) static void binder_vma_open(struct vm_area_struct *vma)
{
 struct binder_proc *proc = vma->vm_private_data;

 binder_debug(BINDER_DEBUG_OPEN_CLOSE,
       "%d open vm area %lx-%lx (%ld K) vma %lx pagep %lx\n",
       proc->pid, vma->vm_start, vma->vm_end,
       (vma->vm_end - vma->vm_start) / SZ_1K, vma->vm_flags,
       (unsigned long)pgprot_val(vma->vm_page_prot));
}
