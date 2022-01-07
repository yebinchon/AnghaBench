
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ opcode; scalar_t__ func; } ;
struct TYPE_7__ {scalar_t__ opcode; } ;
struct TYPE_6__ {int uimmediate; } ;
struct TYPE_5__ {scalar_t__ opcode; int rt; } ;
union mips_instruction {int word; TYPE_4__ r_format; TYPE_3__ j_format; TYPE_2__ u_format; TYPE_1__ mm16_r5_format; } ;


 scalar_t__ j_op ;
 scalar_t__ jal_op ;
 scalar_t__ jalr_op ;
 scalar_t__ jr_op ;
 scalar_t__ mm_insn_16bit (int) ;
 scalar_t__ mm_j32_op ;
 scalar_t__ mm_jal32_op ;
 int mm_jalr_op ;
 int mm_jr16_op ;
 scalar_t__ mm_pool16c_op ;
 scalar_t__ mm_pool32a_op ;
 scalar_t__ mm_pool32axf_op ;
 scalar_t__ spec_op ;

__attribute__((used)) static inline int is_jump_ins(union mips_instruction *ip)
{
 if (ip->j_format.opcode == j_op)
  return 1;
 if (ip->j_format.opcode == jal_op)
  return 1;
 if (ip->r_format.opcode != spec_op)
  return 0;
 return ip->r_format.func == jalr_op || ip->r_format.func == jr_op;

}
