
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int childHolderWidget; } ;
typedef TYPE_1__ uiWindow ;
struct TYPE_6__ {int width; int height; } ;
typedef TYPE_2__ GtkAllocation ;


 int gtk_widget_get_allocation (int ,TYPE_2__*) ;

void uiWindowContentSize(uiWindow *w, int *width, int *height)
{
 GtkAllocation allocation;

 gtk_widget_get_allocation(w->childHolderWidget, &allocation);
 *width = allocation.width;
 *height = allocation.height;
}
