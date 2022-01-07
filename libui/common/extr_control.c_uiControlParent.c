
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* (* Parent ) (TYPE_1__*) ;} ;
typedef TYPE_1__ uiControl ;


 TYPE_1__* stub1 (TYPE_1__*) ;

uiControl *uiControlParent(uiControl *c)
{
 return (*(c->Parent))(c);
}
