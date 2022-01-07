
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int instructionCount; } ;
typedef TYPE_1__ vm_t ;
struct jump_insn {int jump_iname; int jump_dest_insn; int * next; struct dst_insn* parent; } ;
struct func_info {int dummy; } ;
struct dst_insn {int dummy; } ;
typedef enum sparc_iname { ____Placeholder_sparc_iname } sparc_iname ;


 int ErrJump () ;
 struct jump_insn* Z_Malloc (int) ;
 int dst_insn_insert_tail (struct func_info* const,struct dst_insn*) ;
 struct dst_insn* dst_new (struct func_info* const,int,struct jump_insn*,int ) ;
 int jump_insn_insert_tail (struct func_info* const,struct jump_insn*) ;

__attribute__((used)) static void jump_insn_append(vm_t *vm, struct func_info * const fp, enum sparc_iname iname, int dest)
{
 struct jump_insn *jp = Z_Malloc(sizeof(*jp));
 struct dst_insn *dp;

 if (dest < 0 || dest >= vm->instructionCount)
  ErrJump();

 dp = dst_new(fp, 2, jp, 0);

 jp->jump_iname = iname;
 jp->jump_dest_insn = dest;
 jp->parent = dp;
 jp->next = ((void*)0);

 jump_insn_insert_tail(fp, jp);
 dst_insn_insert_tail(fp, dp);
}
