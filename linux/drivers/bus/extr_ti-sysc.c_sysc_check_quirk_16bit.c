
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int quirks; } ;
struct sysc {TYPE_1__ cfg; } ;
struct resource {int dummy; } ;


 int SYSC_QUIRK_16BIT ;
 int SYSC_QUIRK_USE_CLOCKACT ;
 int resource_size (struct resource*) ;

__attribute__((used)) static void sysc_check_quirk_16bit(struct sysc *ddata, struct resource *res)
{
 if (resource_size(res) == 8)
  ddata->cfg.quirks |= SYSC_QUIRK_16BIT | SYSC_QUIRK_USE_CLOCKACT;
}
