
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct insn {int dummy; } ;


 scalar_t__ __indirect_thunk_end ;
 scalar_t__ __indirect_thunk_start ;
 int __insn_is_indirect_jump (struct insn*) ;
 int insn_jump_into_range (struct insn*,unsigned long,unsigned long) ;

__attribute__((used)) static int insn_is_indirect_jump(struct insn *insn)
{
 int ret = __insn_is_indirect_jump(insn);
 return ret;
}
