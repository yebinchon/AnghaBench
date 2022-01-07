
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_version {int hw_variant; int hw_revision; int fw_revision; } ;
struct intel_boot_params {int dev_revid; } ;


 int le16_to_cpu (int) ;
 int snprintf (char*,size_t,char*,int,int,...) ;

__attribute__((used)) static bool btusb_setup_intel_new_get_fw_name(struct intel_version *ver,
          struct intel_boot_params *params,
          char *fw_name, size_t len,
          const char *suffix)
{
 switch (ver->hw_variant) {
 case 0x0b:
 case 0x0c:
  snprintf(fw_name, len, "intel/ibt-%u-%u.%s",
   le16_to_cpu(ver->hw_variant),
   le16_to_cpu(params->dev_revid),
   suffix);
  break;
 case 0x11:
 case 0x12:
 case 0x13:
 case 0x14:
  snprintf(fw_name, len, "intel/ibt-%u-%u-%u.%s",
   le16_to_cpu(ver->hw_variant),
   le16_to_cpu(ver->hw_revision),
   le16_to_cpu(ver->fw_revision),
   suffix);
  break;
 default:
  return 0;
 }
 return 1;
}
