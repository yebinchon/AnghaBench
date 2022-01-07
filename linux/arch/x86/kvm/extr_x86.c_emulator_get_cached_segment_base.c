
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_emulate_ctxt {int dummy; } ;


 int emul_to_vcpu (struct x86_emulate_ctxt*) ;
 unsigned long get_segment_base (int ,int) ;

__attribute__((used)) static unsigned long emulator_get_cached_segment_base(
 struct x86_emulate_ctxt *ctxt, int seg)
{
 return get_segment_base(emul_to_vcpu(ctxt), seg);
}
