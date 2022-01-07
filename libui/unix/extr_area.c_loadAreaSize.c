
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int areaWidget; int scrolling; } ;
typedef TYPE_1__ uiArea ;
struct TYPE_6__ {double width; double height; } ;
typedef TYPE_2__ GtkAllocation ;


 int gtk_widget_get_allocation (int ,TYPE_2__*) ;

__attribute__((used)) static void loadAreaSize(uiArea *a, double *width, double *height)
{
 GtkAllocation allocation;

 *width = 0;
 *height = 0;

 if (!a->scrolling) {
  gtk_widget_get_allocation(a->areaWidget, &allocation);



  *width = allocation.width;
  *height = allocation.height;
 }
}
