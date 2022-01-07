
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int msg_queue; } ;
typedef TYPE_1__ FFPlayer ;


 int msg_queue_put_simple4 (int *,int,int,int,void*,int) ;

__attribute__((used)) inline static void ffp_notify_msg4(FFPlayer *ffp, int what, int arg1, int arg2, void *obj, int obj_len) {
    msg_queue_put_simple4(&ffp->msg_queue, what, arg1, arg2, obj, obj_len);
}
