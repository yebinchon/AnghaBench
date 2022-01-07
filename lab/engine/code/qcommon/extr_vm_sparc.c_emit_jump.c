
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_t ;
struct func_info {int dummy; } ;
typedef enum sparc_iname { ____Placeholder_sparc_iname } sparc_iname ;


 int end_emit (struct func_info* const) ;
 int jump_insn_append (int *,struct func_info* const,int,int) ;

__attribute__((used)) static void emit_jump(vm_t *vm, struct func_info * const fp, enum sparc_iname iname, int dest)
{
 end_emit(fp);
 jump_insn_append(vm, fp, iname, dest);
}
