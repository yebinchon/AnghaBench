
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int margined; int childHolderContainer; } ;
typedef TYPE_1__ uiWindow ;


 int uiprivSetMargined (int ,int) ;

void uiWindowSetMargined(uiWindow *w, int margined)
{
 w->margined = margined;
 uiprivSetMargined(w->childHolderContainer, w->margined);
}
