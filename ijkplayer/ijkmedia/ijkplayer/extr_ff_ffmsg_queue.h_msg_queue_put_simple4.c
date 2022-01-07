
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int what; int arg1; int arg2; int free_l; int obj; } ;
typedef int MessageQueue ;
typedef TYPE_1__ AVMessage ;


 int av_malloc (int) ;
 int memcpy (int ,void*,int) ;
 int msg_init_msg (TYPE_1__*) ;
 int msg_obj_free_l ;
 int msg_queue_put (int *,TYPE_1__*) ;

__attribute__((used)) inline static void msg_queue_put_simple4(MessageQueue *q, int what, int arg1, int arg2, void *obj, int obj_len)
{
    AVMessage msg;
    msg_init_msg(&msg);
    msg.what = what;
    msg.arg1 = arg1;
    msg.arg2 = arg2;
    msg.obj = av_malloc(obj_len);
    memcpy(msg.obj, obj, obj_len);
    msg.free_l = msg_obj_free_l;
    msg_queue_put(q, &msg);
}
