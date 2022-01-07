
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mm_struct {int mm_users; int context; } ;


 int CTX_HWBITS (int ) ;
 int SECONDARY_CONTEXT ;
 int __flush_tlb_mm (int ,int ) ;
 int atomic_read (int *) ;
 int cpumask_copy (int ,int ) ;
 int cpumask_of (int) ;
 int get_cpu () ;
 int mm_cpumask (struct mm_struct*) ;
 int put_cpu () ;
 int smp_cross_call_masked (int *,int ,int ,int ,int ) ;
 int xcall_flush_tlb_mm ;

void smp_flush_tlb_mm(struct mm_struct *mm)
{
 u32 ctx = CTX_HWBITS(mm->context);
 int cpu = get_cpu();

 if (atomic_read(&mm->mm_users) == 1) {
  cpumask_copy(mm_cpumask(mm), cpumask_of(cpu));
  goto local_flush_and_out;
 }

 smp_cross_call_masked(&xcall_flush_tlb_mm,
         ctx, 0, 0,
         mm_cpumask(mm));

local_flush_and_out:
 __flush_tlb_mm(ctx, SECONDARY_CONTEXT);

 put_cpu();
}
