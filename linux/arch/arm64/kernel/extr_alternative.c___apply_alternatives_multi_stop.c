
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alt_region {struct alt_instr* end; struct alt_instr* begin; } ;
struct alt_instr {int dummy; } ;


 int ARM64_NPATCHABLE ;
 int BUG_ON (int ) ;
 int DECLARE_BITMAP (int ,int ) ;
 int READ_ONCE (int ) ;
 int WRITE_ONCE (int ,int) ;
 scalar_t__ __alt_instructions ;
 scalar_t__ __alt_instructions_end ;
 int __apply_alternatives (struct alt_region*,int,int ) ;
 int all_alternatives_applied ;
 int bitmap_complement (int ,int ,int ) ;
 int boot_capabilities ;
 int cpu_relax () ;
 int isb () ;
 int remaining_capabilities ;
 scalar_t__ smp_processor_id () ;

__attribute__((used)) static int __apply_alternatives_multi_stop(void *unused)
{
 struct alt_region region = {
  .begin = (struct alt_instr *)__alt_instructions,
  .end = (struct alt_instr *)__alt_instructions_end,
 };


 if (smp_processor_id()) {
  while (!READ_ONCE(all_alternatives_applied))
   cpu_relax();
  isb();
 } else {
  DECLARE_BITMAP(remaining_capabilities, ARM64_NPATCHABLE);

  bitmap_complement(remaining_capabilities, boot_capabilities,
      ARM64_NPATCHABLE);

  BUG_ON(all_alternatives_applied);
  __apply_alternatives(&region, 0, remaining_capabilities);

  WRITE_ONCE(all_alternatives_applied, 1);
 }

 return 0;
}
