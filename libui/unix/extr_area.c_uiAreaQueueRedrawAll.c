
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int areaWidget; } ;
typedef TYPE_1__ uiArea ;


 int gtk_widget_queue_draw (int ) ;

void uiAreaQueueRedrawAll(uiArea *a)
{
 gtk_widget_queue_draw(a->areaWidget);
}
