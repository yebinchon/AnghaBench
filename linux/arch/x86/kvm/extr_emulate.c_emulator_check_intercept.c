
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct x86_instruction_info {int intercept; int next_rip; int ad_bytes; int dst_bytes; int src_bytes; int dst_val; int src_val; int modrm_rm; int modrm_reg; int modrm_mod; int rep_prefix; } ;
struct TYPE_5__ {int bytes; int val64; } ;
struct TYPE_4__ {int bytes; int val64; } ;
struct x86_emulate_ctxt {TYPE_3__* ops; int eip; int ad_bytes; TYPE_2__ dst; TYPE_1__ src; int modrm_rm; int modrm_reg; int modrm_mod; int rep_prefix; } ;
typedef enum x86_intercept_stage { ____Placeholder_x86_intercept_stage } x86_intercept_stage ;
typedef enum x86_intercept { ____Placeholder_x86_intercept } x86_intercept ;
struct TYPE_6__ {int (* intercept ) (struct x86_emulate_ctxt*,struct x86_instruction_info*,int) ;} ;


 int stub1 (struct x86_emulate_ctxt*,struct x86_instruction_info*,int) ;

__attribute__((used)) static int emulator_check_intercept(struct x86_emulate_ctxt *ctxt,
        enum x86_intercept intercept,
        enum x86_intercept_stage stage)
{
 struct x86_instruction_info info = {
  .intercept = intercept,
  .rep_prefix = ctxt->rep_prefix,
  .modrm_mod = ctxt->modrm_mod,
  .modrm_reg = ctxt->modrm_reg,
  .modrm_rm = ctxt->modrm_rm,
  .src_val = ctxt->src.val64,
  .dst_val = ctxt->dst.val64,
  .src_bytes = ctxt->src.bytes,
  .dst_bytes = ctxt->dst.bytes,
  .ad_bytes = ctxt->ad_bytes,
  .next_rip = ctxt->eip,
 };

 return ctxt->ops->intercept(ctxt, &info, stage);
}
