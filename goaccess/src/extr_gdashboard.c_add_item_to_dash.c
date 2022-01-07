
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int metrics; } ;
typedef int GModule ;
typedef TYPE_1__ GHolderItem ;
typedef int GDash ;


 int set_dash_metrics (int **,int ,int ,int ) ;

__attribute__((used)) static void
add_item_to_dash (GDash ** dash, GHolderItem item, GModule module)
{
  set_dash_metrics (dash, item.metrics, module, 0);
}
