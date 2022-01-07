
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vci_t ;
struct lanai_dev {int num_vci; } ;
struct atm_vcc {int dummy; } ;


 int ATM_NOT_RSV_VCI ;


 int EADDRINUSE ;
 int vci_is_ok (struct lanai_dev*,int,struct atm_vcc const*) ;

__attribute__((used)) static int lanai_normalize_ci(struct lanai_dev *lanai,
 const struct atm_vcc *atmvcc, short *vpip, vci_t *vcip)
{
 switch (*vpip) {
  case 128:
   *vpip = 0;

  case 0:
   break;
  default:
   return -EADDRINUSE;
 }
 switch (*vcip) {
  case 129:
   for (*vcip = ATM_NOT_RSV_VCI; *vcip < lanai->num_vci;
       (*vcip)++)
    if (vci_is_ok(lanai, *vcip, atmvcc))
     return 0;
   return -EADDRINUSE;
  default:
   if (*vcip >= lanai->num_vci || *vcip < 0 ||
       !vci_is_ok(lanai, *vcip, atmvcc))
    return -EADDRINUSE;
 }
 return 0;
}
