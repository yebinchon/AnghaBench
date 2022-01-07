
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tlb_pending_info {unsigned long nr; unsigned long* vaddrs; int ctx; } ;
struct mm_struct {int mm_users; int context; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 int CTX_HWBITS (int ) ;
 int __flush_tlb_pending (int ,unsigned long,unsigned long*) ;
 int atomic_read (int *) ;
 int cpumask_copy (int ,int ) ;
 int cpumask_of (int) ;
 TYPE_1__* current ;
 int get_cpu () ;
 int mm_cpumask (struct mm_struct*) ;
 int put_cpu () ;
 int smp_call_function_many (int ,int ,struct tlb_pending_info*,int) ;
 int tlb_pending_func ;

void smp_flush_tlb_pending(struct mm_struct *mm, unsigned long nr, unsigned long *vaddrs)
{
 u32 ctx = CTX_HWBITS(mm->context);
 struct tlb_pending_info info;
 int cpu = get_cpu();

 info.ctx = ctx;
 info.nr = nr;
 info.vaddrs = vaddrs;

 if (mm == current->mm && atomic_read(&mm->mm_users) == 1)
  cpumask_copy(mm_cpumask(mm), cpumask_of(cpu));
 else
  smp_call_function_many(mm_cpumask(mm), tlb_pending_func,
           &info, 1);

 __flush_tlb_pending(ctx, nr, vaddrs);

 put_cpu();
}
