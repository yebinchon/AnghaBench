
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union mips_instruction {int* halfword; int word; } ;
typedef int ulong ;
struct mips_frame_info {int pc_offset; int frame_size; scalar_t__ func; } ;


 int CONFIG_CPU_MICROMIPS ;
 int IS_ENABLED (int ) ;
 scalar_t__ is_jump_ins (union mips_instruction*) ;
 scalar_t__ is_ra_save_ins (union mips_instruction*,int*) ;
 int is_sp_move_ins (union mips_instruction*,int *) ;
 scalar_t__ mm_insn_16bit (int) ;
 scalar_t__ msk_isa16_mode (int ) ;

__attribute__((used)) static int get_frame_info(struct mips_frame_info *info)
{
 bool is_mmips = IS_ENABLED(CONFIG_CPU_MICROMIPS);
 union mips_instruction insn, *ip;
 const unsigned int max_insns = 128;
 unsigned int last_insn_size = 0;
 unsigned int i;
 bool saw_jump = 0;

 info->pc_offset = -1;
 info->frame_size = 0;

 ip = (void *)msk_isa16_mode((ulong)info->func);
 if (!ip)
  goto err;

 for (i = 0; i < max_insns; i++) {
  ip = (void *)ip + last_insn_size;

  if (is_mmips && mm_insn_16bit(ip->halfword[0])) {
   insn.word = ip->halfword[0] << 16;
   last_insn_size = 2;
  } else if (is_mmips) {
   insn.word = ip->halfword[0] << 16 | ip->halfword[1];
   last_insn_size = 4;
  } else {
   insn.word = ip->word;
   last_insn_size = 4;
  }

  if (!info->frame_size) {
   is_sp_move_ins(&insn, &info->frame_size);
   continue;
  } else if (!saw_jump && is_jump_ins(ip)) {
   saw_jump = 1;
   continue;
  }
  if (info->pc_offset == -1 &&
      is_ra_save_ins(&insn, &info->pc_offset))
   break;
  if (saw_jump)
   break;
 }
 if (info->frame_size && info->pc_offset >= 0)
  return 0;
 if (info->pc_offset < 0)
  return 1;

err:
 return -1;
}
