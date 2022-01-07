
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {uintptr_t (* Handle ) (TYPE_1__*) ;} ;
typedef TYPE_1__ uiControl ;


 uintptr_t stub1 (TYPE_1__*) ;

uintptr_t uiControlHandle(uiControl *c)
{
 return (*(c->Handle))(c);
}
