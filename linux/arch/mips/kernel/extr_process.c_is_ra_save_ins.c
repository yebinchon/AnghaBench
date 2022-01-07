
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int opcode; int rs; int rt; int simmediate; } ;
struct TYPE_7__ {int rd; int base; int simmediate; int func; } ;
struct TYPE_6__ {int imm; int rlist; int func; } ;
struct TYPE_5__ {int opcode; int rt; int imm; } ;
union mips_instruction {int word; TYPE_4__ i_format; TYPE_3__ mm_m_format; TYPE_2__ mm16_m_format; TYPE_1__ mm16_r5_format; } ;
typedef int ulong ;
typedef int u32 ;


 scalar_t__ mm_insn_16bit (int) ;






 int sd_op ;
 int sw_op ;

__attribute__((used)) static inline int is_ra_save_ins(union mips_instruction *ip, int *poff)
{
 if ((ip->i_format.opcode == sw_op || ip->i_format.opcode == sd_op) &&
  ip->i_format.rs == 29 && ip->i_format.rt == 31) {
  *poff = ip->i_format.simmediate / sizeof(ulong);
  return 1;
 }

 return 0;

}
