
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int simmediate; int rs; int rt; scalar_t__ opcode; } ;
struct TYPE_9__ {scalar_t__ opcode; int rt; int rs; } ;
struct TYPE_8__ {scalar_t__ opcode; int rt; int imm; } ;
struct TYPE_7__ {int simmediate; } ;
struct TYPE_6__ {scalar_t__ opcode; int simmediate; } ;
union mips_instruction {int word; TYPE_5__ i_format; TYPE_4__ mm_i_format; TYPE_3__ mm16_r5_format; TYPE_2__ mm_b0_format; TYPE_1__ mm16_r3_format; } ;


 scalar_t__ addiu_op ;
 scalar_t__ daddiu_op ;
 scalar_t__ mm_addiu32_op ;
 int mm_addiusp_func ;
 scalar_t__ mm_insn_16bit (int) ;
 scalar_t__ mm_pool16d_op ;

__attribute__((used)) static inline int is_sp_move_ins(union mips_instruction *ip, int *frame_size)
{
 if (ip->i_format.rs != 29 || ip->i_format.rt != 29)
  return 0;

 if (ip->i_format.opcode == addiu_op ||
     ip->i_format.opcode == daddiu_op) {
  *frame_size = -ip->i_format.simmediate;
  return 1;
 }

 return 0;
}
