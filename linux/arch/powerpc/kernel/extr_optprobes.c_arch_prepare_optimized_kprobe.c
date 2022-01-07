
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * insn; } ;
struct optimized_kprobe {TYPE_2__ optinsn; } ;
struct TYPE_4__ {int * insn; } ;
struct kprobe {TYPE_1__ ainsn; scalar_t__ addr; } ;
typedef int kprobe_opcode_t ;
struct TYPE_6__ {int insn_size; } ;


 int BRANCH_SET_LINK ;
 int EILSEQ ;
 int ENOMEM ;
 int ERANGE ;
 int MAX_OPTINSN_SIZE ;
 int TMPL_CALL_HDLR_IDX ;
 int TMPL_EMULATE_IDX ;
 int TMPL_END_IDX ;
 int TMPL_INSN_IDX ;
 int TMPL_OP_IDX ;
 int TMPL_RET_IDX ;
 int WARN (int,char*) ;
 unsigned long can_optimize (struct kprobe*) ;
 int create_branch (unsigned int*,unsigned long,int ) ;
 int flush_icache_range (unsigned long,unsigned long) ;
 int free_ppc_optinsn_slot (int *,int ) ;
 int * get_ppc_optinsn_slot () ;
 int is_offset_in_branch_range (long) ;
 TYPE_3__ kprobe_ppc_optinsn_slots ;
 int * optprobe_template_entry ;
 int patch_branch (int *,unsigned long,int ) ;
 int patch_imm32_load_insns (int ,int *) ;
 int patch_imm64_load_insns (unsigned long,int *) ;
 int patch_instruction (int *,int ) ;
 scalar_t__ ppc_kallsyms_lookup_name (char*) ;
 int pr_devel (char*,int *,unsigned long) ;

int arch_prepare_optimized_kprobe(struct optimized_kprobe *op, struct kprobe *p)
{
 kprobe_opcode_t *buff, branch_op_callback, branch_emulate_step;
 kprobe_opcode_t *op_callback_addr, *emulate_step_addr;
 long b_offset;
 unsigned long nip, size;
 int rc, i;

 kprobe_ppc_optinsn_slots.insn_size = MAX_OPTINSN_SIZE;

 nip = can_optimize(p);
 if (!nip)
  return -EILSEQ;


 buff = get_ppc_optinsn_slot();
 if (!buff)
  return -ENOMEM;
 b_offset = (unsigned long)buff - (unsigned long)p->addr;
 if (!is_offset_in_branch_range(b_offset))
  goto error;


 b_offset = (unsigned long)(buff + TMPL_RET_IDX) -
   (unsigned long)nip;
 if (!is_offset_in_branch_range(b_offset))
  goto error;



 size = (TMPL_END_IDX * sizeof(kprobe_opcode_t)) / sizeof(int);
 pr_devel("Copying template to %p, size %lu\n", buff, size);
 for (i = 0; i < size; i++) {
  rc = patch_instruction(buff + i, *(optprobe_template_entry + i));
  if (rc < 0)
   goto error;
 }





 patch_imm64_load_insns((unsigned long)op, buff + TMPL_OP_IDX);




 op_callback_addr = (kprobe_opcode_t *)ppc_kallsyms_lookup_name("optimized_callback");
 emulate_step_addr = (kprobe_opcode_t *)ppc_kallsyms_lookup_name("emulate_step");
 if (!op_callback_addr || !emulate_step_addr) {
  WARN(1, "Unable to lookup optimized_callback()/emulate_step()\n");
  goto error;
 }

 branch_op_callback = create_branch((unsigned int *)buff + TMPL_CALL_HDLR_IDX,
    (unsigned long)op_callback_addr,
    BRANCH_SET_LINK);

 branch_emulate_step = create_branch((unsigned int *)buff + TMPL_EMULATE_IDX,
    (unsigned long)emulate_step_addr,
    BRANCH_SET_LINK);

 if (!branch_op_callback || !branch_emulate_step)
  goto error;

 patch_instruction(buff + TMPL_CALL_HDLR_IDX, branch_op_callback);
 patch_instruction(buff + TMPL_EMULATE_IDX, branch_emulate_step);




 patch_imm32_load_insns(*p->ainsn.insn, buff + TMPL_INSN_IDX);




 patch_branch(buff + TMPL_RET_IDX, (unsigned long)nip, 0);

 flush_icache_range((unsigned long)buff,
      (unsigned long)(&buff[TMPL_END_IDX]));

 op->optinsn.insn = buff;

 return 0;

error:
 free_ppc_optinsn_slot(buff, 0);
 return -ERANGE;

}
