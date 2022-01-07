
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct screen_info {scalar_t__ lfb_base; int lfb_height; int lfb_width; int lfb_linelength; } ;
struct TYPE_2__ {scalar_t__ base; int height; int width; int stride; int optname; } ;


 int M_UNKNOWN ;
 TYPE_1__* efifb_dmi_list ;
 int strcmp (char const*,int ) ;

void efifb_setup_from_dmi(struct screen_info *si, const char *opt)
{
 int i;

 for (i = 0; i < M_UNKNOWN; i++) {
  if (efifb_dmi_list[i].base != 0 &&
      !strcmp(opt, efifb_dmi_list[i].optname)) {
   si->lfb_base = efifb_dmi_list[i].base;
   si->lfb_linelength = efifb_dmi_list[i].stride;
   si->lfb_width = efifb_dmi_list[i].width;
   si->lfb_height = efifb_dmi_list[i].height;
  }
 }
}
