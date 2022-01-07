
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct x86_emulate_ctxt {int dummy; } ;
struct TYPE_3__ {int hflags; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 TYPE_2__* emul_to_vcpu (struct x86_emulate_ctxt*) ;

__attribute__((used)) static unsigned emulator_get_hflags(struct x86_emulate_ctxt *ctxt)
{
 return emul_to_vcpu(ctxt)->arch.hflags;
}
