
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {unsigned long mm; } ;
struct TYPE_2__ {int last_user_mm; int last_user_mm_ibpb; } ;


 unsigned long LAST_USER_MM_IBPB ;
 TYPE_1__ cpu_tlbstate ;
 int indirect_branch_prediction_barrier () ;
 unsigned long mm_mangle_tif_spec_ib (struct task_struct*) ;
 scalar_t__ static_branch_likely (int *) ;
 scalar_t__ static_branch_unlikely (int *) ;
 int switch_mm_always_ibpb ;
 int switch_mm_cond_ibpb ;
 unsigned long this_cpu_read (int ) ;
 int this_cpu_write (int ,unsigned long) ;

__attribute__((used)) static void cond_ibpb(struct task_struct *next)
{
 if (!next || !next->mm)
  return;
 if (static_branch_likely(&switch_mm_cond_ibpb)) {
  unsigned long prev_mm, next_mm;
  next_mm = mm_mangle_tif_spec_ib(next);
  prev_mm = this_cpu_read(cpu_tlbstate.last_user_mm_ibpb);





  if (next_mm != prev_mm &&
      (next_mm | prev_mm) & LAST_USER_MM_IBPB)
   indirect_branch_prediction_barrier();

  this_cpu_write(cpu_tlbstate.last_user_mm_ibpb, next_mm);
 }

 if (static_branch_unlikely(&switch_mm_always_ibpb)) {





  if (this_cpu_read(cpu_tlbstate.last_user_mm) != next->mm) {
   indirect_branch_prediction_barrier();
   this_cpu_write(cpu_tlbstate.last_user_mm, next->mm);
  }
 }
}
