
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int box; } ;
typedef TYPE_1__ uiprivChild ;


 int GTK_CONTAINER (int ) ;
 int uiprivSetMargined (int ,int) ;

void uiprivChildSetMargined(uiprivChild *c, int margined)
{
 uiprivSetMargined(GTK_CONTAINER(c->box), margined);
}
