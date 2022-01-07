
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int what; int arg1; int arg2; } ;
typedef int MessageQueue ;
typedef TYPE_1__ AVMessage ;


 int msg_init_msg (TYPE_1__*) ;
 int msg_queue_put (int *,TYPE_1__*) ;

__attribute__((used)) inline static void msg_queue_put_simple3(MessageQueue *q, int what, int arg1, int arg2)
{
    AVMessage msg;
    msg_init_msg(&msg);
    msg.what = what;
    msg.arg1 = arg1;
    msg.arg2 = arg2;
    msg_queue_put(q, &msg);
}
