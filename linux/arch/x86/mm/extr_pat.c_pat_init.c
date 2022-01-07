
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cpuinfo_x86 {scalar_t__ x86_vendor; int x86; int x86_model; } ;


 int PAT (int,int ) ;
 int UC ;
 int UC_MINUS ;
 int WB ;
 int WC ;
 int WP ;
 int WT ;
 scalar_t__ X86_VENDOR_INTEL ;
 struct cpuinfo_x86 boot_cpu_data ;
 int boot_cpu_done ;
 int pat_ap_init (int) ;
 int pat_bsp_init (int) ;
 scalar_t__ pat_disabled ;

void pat_init(void)
{
 u64 pat;
 struct cpuinfo_x86 *c = &boot_cpu_data;

 if (pat_disabled)
  return;

 if ((c->x86_vendor == X86_VENDOR_INTEL) &&
     (((c->x86 == 0x6) && (c->x86_model <= 0xd)) ||
      ((c->x86 == 0xf) && (c->x86_model <= 0x6)))) {
  pat = PAT(0, WB) | PAT(1, WC) | PAT(2, UC_MINUS) | PAT(3, UC) |
        PAT(4, WB) | PAT(5, WC) | PAT(6, UC_MINUS) | PAT(7, UC);
 } else {
  pat = PAT(0, WB) | PAT(1, WC) | PAT(2, UC_MINUS) | PAT(3, UC) |
        PAT(4, WB) | PAT(5, WP) | PAT(6, UC_MINUS) | PAT(7, WT);
 }

 if (!boot_cpu_done) {
  pat_bsp_init(pat);
  boot_cpu_done = 1;
 } else {
  pat_ap_init(pat);
 }
}
