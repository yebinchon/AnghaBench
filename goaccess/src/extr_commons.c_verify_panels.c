
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ignore_panel_idx; int ignore_panels; int log_format; } ;


 int REMOTE_USER ;
 int TOTAL_MODULES ;
 int VIRTUAL_HOSTS ;
 TYPE_1__ conf ;
 int remove_module (int ) ;
 scalar_t__ str_inarray (char*,int ,int) ;
 int strstr (int ,char*) ;

void
verify_panels (void)
{
  int ignore_panel_idx = conf.ignore_panel_idx;


  if (!conf.log_format)
    return;

  if (!strstr (conf.log_format, "%v") && ignore_panel_idx < TOTAL_MODULES) {
    if (str_inarray ("VIRTUAL_HOSTS", conf.ignore_panels, ignore_panel_idx) < 0)
      remove_module (VIRTUAL_HOSTS);
  }
  if (!strstr (conf.log_format, "%e") && ignore_panel_idx < TOTAL_MODULES) {
    if (str_inarray ("REMOTE_USER", conf.ignore_panels, ignore_panel_idx) < 0)
      remove_module (REMOTE_USER);
  }
}
