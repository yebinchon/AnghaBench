
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct kvmppc_bat {int bepi_mask; int bepi; int vs; int vp; int raw; int brpn; int wimg; int pp; } ;
struct kvm_vcpu {int dummy; } ;



void kvmppc_set_bat(struct kvm_vcpu *vcpu, struct kvmppc_bat *bat, bool upper,
                    u32 val)
{
 if (upper) {

  u32 bl = (val >> 2) & 0x7ff;
  bat->bepi_mask = (~bl << 17);
  bat->bepi = val & 0xfffe0000;
  bat->vs = (val & 2) ? 1 : 0;
  bat->vp = (val & 1) ? 1 : 0;
  bat->raw = (bat->raw & 0xffffffff00000000ULL) | val;
 } else {

  bat->brpn = val & 0xfffe0000;
  bat->wimg = (val >> 3) & 0xf;
  bat->pp = val & 3;
  bat->raw = (bat->raw & 0x00000000ffffffffULL) | ((u64)val << 32);
 }
}
