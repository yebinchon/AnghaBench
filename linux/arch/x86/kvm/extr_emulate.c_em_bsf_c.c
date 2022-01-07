
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
struct TYPE_3__ {scalar_t__ val; } ;
struct x86_emulate_ctxt {TYPE_2__ dst; TYPE_1__ src; } ;


 int OP_NONE ;
 int em_bsf ;
 int fastop (struct x86_emulate_ctxt*,int ) ;

__attribute__((used)) static int em_bsf_c(struct x86_emulate_ctxt *ctxt)
{

 if (ctxt->src.val == 0)
  ctxt->dst.type = OP_NONE;
 return fastop(ctxt, em_bsf);
}
