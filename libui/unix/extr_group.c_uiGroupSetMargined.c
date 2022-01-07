
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int margined; int * child; } ;
typedef TYPE_1__ uiGroup ;


 int uiprivChildSetMargined (int *,int) ;

void uiGroupSetMargined(uiGroup *g, int margined)
{
 g->margined = margined;
 if (g->child != ((void*)0))
  uiprivChildSetMargined(g->child, g->margined);
}
