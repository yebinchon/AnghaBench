
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int window; int childHolderWidget; } ;
typedef TYPE_1__ uiWindow ;
typedef int gint ;
struct TYPE_6__ {scalar_t__ height; scalar_t__ width; } ;
typedef TYPE_2__ GtkAllocation ;


 int gtk_widget_get_allocation (int ,TYPE_2__*) ;
 int gtk_window_get_size (int ,int*,int*) ;
 int gtk_window_resize (int ,int,int) ;

void uiWindowSetContentSize(uiWindow *w, int width, int height)
{
 GtkAllocation childAlloc;
 gint winWidth, winHeight;
 gtk_window_get_size(w->window, &winWidth, &winHeight);


 gtk_widget_get_allocation(w->childHolderWidget, &childAlloc);

 winWidth -= childAlloc.width;
 winHeight -= childAlloc.height;


 winWidth += width;
 winHeight += height;


 gtk_window_resize(w->window, winWidth, winHeight);
}
