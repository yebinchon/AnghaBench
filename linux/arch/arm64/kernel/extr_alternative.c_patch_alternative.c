
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct alt_instr {int dummy; } ;
typedef int __le32 ;


 int * ALT_REPL_PTR (struct alt_instr*) ;
 int cpu_to_le32 (int ) ;
 int get_alt_insn (struct alt_instr*,int *,int *) ;

__attribute__((used)) static void patch_alternative(struct alt_instr *alt,
         __le32 *origptr, __le32 *updptr, int nr_inst)
{
 __le32 *replptr;
 int i;

 replptr = ALT_REPL_PTR(alt);
 for (i = 0; i < nr_inst; i++) {
  u32 insn;

  insn = get_alt_insn(alt, origptr + i, replptr + i);
  updptr[i] = cpu_to_le32(insn);
 }
}
