
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int quirks; } ;
struct sysc {TYPE_1__ cfg; } ;
struct device_node {int dummy; } ;


 int SYSC_QUIRK_NO_IDLE_ON_INIT ;
 int SYSC_QUIRK_NO_RESET_ON_INIT ;
 struct device_node* stdout_path ;
 int sysc_init_stdout_path (struct sysc*) ;

__attribute__((used)) static void sysc_check_quirk_stdout(struct sysc *ddata,
        struct device_node *np)
{
 sysc_init_stdout_path(ddata);
 if (np != stdout_path)
  return;

 ddata->cfg.quirks |= SYSC_QUIRK_NO_IDLE_ON_INIT |
    SYSC_QUIRK_NO_RESET_ON_INIT;
}
