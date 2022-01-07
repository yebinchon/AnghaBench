
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_t ;
struct src_insn {struct src_insn* next; } ;
struct func_info {struct src_insn* first; int * cached_const; int stack_space; scalar_t__ insn_index; int fpr_pos; int gpr_pos; } ;


 int F0 ;
 int L0 ;
 int SL (int,int) ;
 int analyze_function (struct func_info* const) ;
 int compile_one_insn (int *,struct func_info* const,struct src_insn*) ;
 int free_source_insns (struct func_info* const) ;

__attribute__((used)) static void compile_function(vm_t *vm, struct func_info * const fp)
{
 struct src_insn *sp;

 analyze_function(fp);

 fp->gpr_pos = L0;
 fp->fpr_pos = F0;
 fp->insn_index = 0;

 fp->stack_space = SL(64, 128);
 fp->cached_const = ((void*)0);

 sp = fp->first;
 while ((sp = sp->next) != ((void*)0))
  compile_one_insn(vm, fp, sp);

 free_source_insns(fp);
}
