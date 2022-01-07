
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int size; } ;
struct TYPE_6__ {TYPE_2__* threads; TYPE_1__ thread_map; } ;
struct TYPE_5__ {int server_notifications; } ;


 TYPE_3__ conf ;
 int h2o_multithread_send_message (int *,int *) ;

__attribute__((used)) static void notify_all_threads(void)
{
    unsigned i;
    for (i = 0; i != conf.thread_map.size; ++i)
        h2o_multithread_send_message(&conf.threads[i].server_notifications, ((void*)0));
}
