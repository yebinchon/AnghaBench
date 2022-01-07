
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_signal_t ;
struct TYPE_3__ {void* data; } ;


 int FIB_UNTIL ;
 int SIGINT ;
 int UV_RUN_DEFAULT ;
 int after_fib ;
 int fib ;
 TYPE_1__* fib_reqs ;
 int loop ;
 int signal_handler ;
 int uv_default_loop () ;
 int uv_queue_work (int ,TYPE_1__*,int ,int ) ;
 int uv_run (int ,int ) ;
 int uv_signal_init (int ,int *) ;
 int uv_signal_start (int *,int ,int ) ;

int main() {
    loop = uv_default_loop();

    int data[FIB_UNTIL];
    int i;
    for (i = 0; i < FIB_UNTIL; i++) {
        data[i] = i;
        fib_reqs[i].data = (void *) &data[i];
        uv_queue_work(loop, &fib_reqs[i], fib, after_fib);
    }

    uv_signal_t sig;
    uv_signal_init(loop, &sig);
    uv_signal_start(&sig, signal_handler, SIGINT);

    return uv_run(loop, UV_RUN_DEFAULT);
}
