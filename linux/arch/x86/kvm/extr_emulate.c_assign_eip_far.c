
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
typedef int u64 ;
struct x86_emulate_ctxt {int mode; TYPE_1__* ops; } ;
struct desc_struct {scalar_t__ d; scalar_t__ l; } ;
typedef enum x86emul_mode { ____Placeholder_x86emul_mode } x86emul_mode ;
struct TYPE_2__ {int (* get_msr ) (struct x86_emulate_ctxt*,int ,int*) ;} ;


 int EFER_LMA ;
 int MSR_EFER ;
 int X86EMUL_CONTINUE ;
 scalar_t__ X86EMUL_MODE_PROT16 ;
 int X86EMUL_MODE_PROT32 ;
 int X86EMUL_MODE_PROT64 ;
 int assign_eip (struct x86_emulate_ctxt*,int ,int) ;
 int stub1 (struct x86_emulate_ctxt*,int ,int*) ;

__attribute__((used)) static int assign_eip_far(struct x86_emulate_ctxt *ctxt, ulong dst,
     const struct desc_struct *cs_desc)
{
 enum x86emul_mode mode = ctxt->mode;
 int rc;
 if (mode == X86EMUL_MODE_PROT16 || mode == X86EMUL_MODE_PROT32)
  mode = cs_desc->d ? X86EMUL_MODE_PROT32 : X86EMUL_MODE_PROT16;
 rc = assign_eip(ctxt, dst, mode);
 if (rc == X86EMUL_CONTINUE)
  ctxt->mode = mode;
 return rc;
}
