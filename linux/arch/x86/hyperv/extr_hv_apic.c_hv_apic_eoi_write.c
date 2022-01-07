
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hv_vp_assist_page {int apic_assist; } ;


 int HV_X64_MSR_EOI ;
 struct hv_vp_assist_page** hv_vp_assist_page ;
 size_t smp_processor_id () ;
 int wrmsr (int ,int ,int ) ;
 int xchg (int *,int ) ;

__attribute__((used)) static void hv_apic_eoi_write(u32 reg, u32 val)
{
 struct hv_vp_assist_page *hvp = hv_vp_assist_page[smp_processor_id()];

 if (hvp && (xchg(&hvp->apic_assist, 0) & 0x1))
  return;

 wrmsr(HV_X64_MSR_EOI, val, 0);
}
