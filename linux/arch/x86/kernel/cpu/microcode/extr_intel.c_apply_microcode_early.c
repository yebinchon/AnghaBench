
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ rev; } ;
struct ucode_cpu_info {TYPE_2__ cpu_sig; struct microcode_intel* mc; } ;
struct TYPE_3__ {scalar_t__ rev; int date; } ;
struct microcode_intel {TYPE_1__ hdr; scalar_t__ bits; } ;


 int MSR_IA32_UCODE_WRITE ;
 int UCODE_OK ;
 scalar_t__ intel_get_microcode_revision () ;
 int native_wbinvd () ;
 int native_wrmsrl (int ,unsigned long) ;
 int print_ucode (struct ucode_cpu_info*) ;
 int print_ucode_info (struct ucode_cpu_info*,int ) ;

__attribute__((used)) static int apply_microcode_early(struct ucode_cpu_info *uci, bool early)
{
 struct microcode_intel *mc;
 u32 rev;

 mc = uci->mc;
 if (!mc)
  return 0;






 rev = intel_get_microcode_revision();
 if (rev >= mc->hdr.rev) {
  uci->cpu_sig.rev = rev;
  return UCODE_OK;
 }





 native_wbinvd();


 native_wrmsrl(MSR_IA32_UCODE_WRITE, (unsigned long)mc->bits);

 rev = intel_get_microcode_revision();
 if (rev != mc->hdr.rev)
  return -1;

 uci->cpu_sig.rev = rev;

 if (early)
  print_ucode(uci);
 else
  print_ucode_info(uci, mc->hdr.date);

 return 0;
}
