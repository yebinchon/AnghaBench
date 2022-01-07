
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int pthread_t ;
struct TYPE_4__ {void* loop; void* queue; int shutdown_receiver; int pong_receiver; int received_shutdown; } ;
struct TYPE_3__ {void* loop; void* queue; int ping_receiver; } ;


 int INT32_MAX ;
 int UV_RUN_ONCE ;
 void* create_loop () ;
 int destroy_loop (void*) ;
 int h2o_evloop_run (void*,int ) ;
 void* h2o_multithread_create_queue (void*) ;
 int h2o_multithread_destroy_queue (void*) ;
 int h2o_multithread_register_receiver (void*,int *,int ) ;
 int h2o_multithread_unregister_receiver (void*,int *) ;
 TYPE_2__ main_thread ;
 int ok (int) ;
 int on_ping ;
 int on_pong ;
 int on_shutdown ;
 int pthread_create (int *,int *,int ,int *) ;
 int pthread_join (int ,int *) ;
 int send_empty_message (int *) ;
 int uv_run (void*,int ) ;
 int worker_main ;
 TYPE_1__ worker_thread ;

void test_lib__common__multithread_c(void)
{
    pthread_t tid;

    main_thread.loop = create_loop();
    main_thread.queue = h2o_multithread_create_queue(main_thread.loop);
    h2o_multithread_register_receiver(main_thread.queue, &main_thread.pong_receiver, on_pong);
    h2o_multithread_register_receiver(main_thread.queue, &main_thread.shutdown_receiver, on_shutdown);
    worker_thread.loop = create_loop();
    worker_thread.queue = h2o_multithread_create_queue(worker_thread.loop);
    h2o_multithread_register_receiver(worker_thread.queue, &worker_thread.ping_receiver, on_ping);

    pthread_create(&tid, ((void*)0), worker_main, ((void*)0));


    send_empty_message(&worker_thread.ping_receiver);

    while (!main_thread.received_shutdown) {



        h2o_evloop_run(main_thread.loop, INT32_MAX);

    }

    pthread_join(tid, ((void*)0));

    h2o_multithread_unregister_receiver(worker_thread.queue, &worker_thread.ping_receiver);
    h2o_multithread_destroy_queue(worker_thread.queue);
    destroy_loop(worker_thread.loop);
    h2o_multithread_unregister_receiver(main_thread.queue, &main_thread.pong_receiver);
    h2o_multithread_unregister_receiver(main_thread.queue, &main_thread.shutdown_receiver);
    h2o_multithread_destroy_queue(main_thread.queue);
    destroy_loop(main_thread.loop);

    ok(1);
}
