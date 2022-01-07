
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int vector; int error_code_valid; int error_code; } ;
struct x86_emulate_ctxt {TYPE_1__ exception; } ;


 int WARN_ON (int) ;
 int X86EMUL_PROPAGATE_FAULT ;

__attribute__((used)) static int emulate_exception(struct x86_emulate_ctxt *ctxt, int vec,
        u32 error, bool valid)
{
 WARN_ON(vec > 0x1f);
 ctxt->exception.vector = vec;
 ctxt->exception.error_code = error;
 ctxt->exception.error_code_valid = valid;
 return X86EMUL_PROPAGATE_FAULT;
}
