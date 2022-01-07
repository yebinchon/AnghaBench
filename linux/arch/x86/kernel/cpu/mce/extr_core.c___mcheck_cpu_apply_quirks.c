
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mce_bank {scalar_t__ init; scalar_t__ ctl; } ;
struct mca_config {scalar_t__ bootlog; scalar_t__ monarch_timeout; int panic_timeout; } ;
struct cpuinfo_x86 {scalar_t__ x86_vendor; int x86; int x86_model; } ;
struct TYPE_2__ {int overflow_recov; } ;


 int EOPNOTSUPP ;
 scalar_t__ USEC_PER_SEC ;
 scalar_t__ X86_VENDOR_AMD ;
 scalar_t__ X86_VENDOR_INTEL ;
 scalar_t__ X86_VENDOR_UNKNOWN ;
 int clear_bit (int,unsigned long*) ;
 struct mca_config mca_cfg ;
 int mce_banks_array ;
 TYPE_1__ mce_flags ;
 int mce_num_banks ;
 int pr_info (char*) ;
 int quirk_no_way_out ;
 int quirk_sandybridge_ifu ;
 struct mce_bank* this_cpu_ptr (int ) ;
 int this_cpu_read (int ) ;

__attribute__((used)) static int __mcheck_cpu_apply_quirks(struct cpuinfo_x86 *c)
{
 struct mce_bank *mce_banks = this_cpu_ptr(mce_banks_array);
 struct mca_config *cfg = &mca_cfg;

 if (c->x86_vendor == X86_VENDOR_UNKNOWN) {
  pr_info("unknown CPU type - not enabling MCE support\n");
  return -EOPNOTSUPP;
 }


 if (c->x86_vendor == X86_VENDOR_AMD) {
  if (c->x86 == 15 && this_cpu_read(mce_num_banks) > 4) {





   clear_bit(10, (unsigned long *)&mce_banks[4].ctl);
  }
  if (c->x86 < 0x11 && cfg->bootlog < 0) {




   cfg->bootlog = 0;
  }




  if (c->x86 == 6 && this_cpu_read(mce_num_banks) > 0)
   mce_banks[0].ctl = 0;





  if (c->x86 == 0x15 && c->x86_model <= 0xf)
   mce_flags.overflow_recov = 1;

 }

 if (c->x86_vendor == X86_VENDOR_INTEL) {
  if (c->x86 == 6 && c->x86_model < 0x1A && this_cpu_read(mce_num_banks) > 0)
   mce_banks[0].init = 0;





  if ((c->x86 > 6 || (c->x86 == 6 && c->x86_model >= 0xe)) &&
   cfg->monarch_timeout < 0)
   cfg->monarch_timeout = USEC_PER_SEC;





  if (c->x86 == 6 && c->x86_model <= 13 && cfg->bootlog < 0)
   cfg->bootlog = 0;

  if (c->x86 == 6 && c->x86_model == 45)
   quirk_no_way_out = quirk_sandybridge_ifu;
 }
 if (cfg->monarch_timeout < 0)
  cfg->monarch_timeout = 0;
 if (cfg->bootlog != 0)
  cfg->panic_timeout = 30;

 return 0;
}
