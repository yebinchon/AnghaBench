
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rs; int rt; scalar_t__ opcode; } ;
union mips_instruction {TYPE_1__ i_format; } ;


 scalar_t__ addiu_op ;
 scalar_t__ daddiu_op ;

__attribute__((used)) static inline int is_sp_move_ins(union mips_instruction *ip)
{

 if (ip->i_format.rs != 29 || ip->i_format.rt != 29)
  return 0;
 if (ip->i_format.opcode == addiu_op || ip->i_format.opcode == daddiu_op)
  return 1;
 return 0;
}
