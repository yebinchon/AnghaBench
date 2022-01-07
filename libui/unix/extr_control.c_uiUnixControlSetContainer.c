
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* SetContainer ) (TYPE_1__*,int *,int ) ;} ;
typedef TYPE_1__ uiUnixControl ;
typedef int gboolean ;
typedef int GtkContainer ;


 int stub1 (TYPE_1__*,int *,int ) ;

void uiUnixControlSetContainer(uiUnixControl *c, GtkContainer *container, gboolean remove)
{
 (*(c->SetContainer))(c, container, remove);
}
