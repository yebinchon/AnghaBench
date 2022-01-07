
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * obj; int (* free_l ) (int *) ;} ;
typedef TYPE_1__ AVMessage ;


 int assert (int (*) (int *)) ;
 int stub1 (int *) ;

__attribute__((used)) inline static void msg_free_res(AVMessage *msg)
{
    if (!msg || !msg->obj)
        return;
    assert(msg->free_l);
    msg->free_l(msg->obj);
    msg->obj = ((void*)0);
}
