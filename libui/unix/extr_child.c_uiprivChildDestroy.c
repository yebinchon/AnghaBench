
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * c; } ;
typedef TYPE_1__ uiprivChild ;
typedef int uiControl ;


 int uiControlDestroy (int *) ;
 int uiprivChildRemove (TYPE_1__*) ;

void uiprivChildDestroy(uiprivChild *c)
{
 uiControl *child;

 child = c->c;
 uiprivChildRemove(c);
 uiControlDestroy(child);
}
