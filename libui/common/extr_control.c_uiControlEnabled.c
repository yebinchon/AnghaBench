
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* Enabled ) (TYPE_1__*) ;} ;
typedef TYPE_1__ uiControl ;


 int stub1 (TYPE_1__*) ;

int uiControlEnabled(uiControl *c)
{
 return (*(c->Enabled))(c);
}
