
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int scrollWidth; int scrollHeight; int areaWidget; int scrolling; } ;
typedef TYPE_1__ uiArea ;


 int gtk_widget_queue_resize (int ) ;
 int uiprivUserBug (char*,TYPE_1__*) ;

void uiAreaSetSize(uiArea *a, int width, int height)
{
 if (!a->scrolling)
  uiprivUserBug("You cannot call uiAreaSetSize() on a non-scrolling uiArea. (area: %p)", a);
 a->scrollWidth = width;
 a->scrollHeight = height;
 gtk_widget_queue_resize(a->areaWidget);
}
