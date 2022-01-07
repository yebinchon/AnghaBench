
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int h2o_multithread_receiver_t ;
typedef int h2o_linklist_t ;
struct TYPE_2__ {int ping_receiver; } ;


 int h2o_linklist_is_empty (int *) ;
 int pop_empty_message (int *) ;
 int send_empty_message (int *) ;
 TYPE_1__ worker_thread ;

__attribute__((used)) static void on_pong(h2o_multithread_receiver_t *receiver, h2o_linklist_t *list)
{
    while (!h2o_linklist_is_empty(list)) {
        pop_empty_message(list);
        send_empty_message(&worker_thread.ping_receiver);
    }
}
