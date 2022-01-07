
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int h2o_multithread_receiver_t ;
typedef int h2o_linklist_t ;
struct TYPE_4__ {int shutdown_receiver; int pong_receiver; } ;
struct TYPE_3__ {int num_ping_received; int should_exit; } ;


 int h2o_linklist_is_empty (int *) ;
 TYPE_2__ main_thread ;
 int pop_empty_message (int *) ;
 int send_empty_message (int *) ;
 TYPE_1__ worker_thread ;

__attribute__((used)) static void on_ping(h2o_multithread_receiver_t *receiver, h2o_linklist_t *list)
{
    while (!h2o_linklist_is_empty(list)) {
        pop_empty_message(list);
        if (++worker_thread.num_ping_received < 100) {
            send_empty_message(&main_thread.pong_receiver);
        } else {
            send_empty_message(&main_thread.shutdown_receiver);
            worker_thread.should_exit = 1;
        }
    }
}
