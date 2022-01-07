
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* data; } ;
typedef TYPE_1__ uv_work_t ;


 int FIB_UNTIL ;
 int UV_RUN_DEFAULT ;
 int after_fib ;
 int fib ;
 int loop ;
 int uv_default_loop () ;
 int uv_queue_work (int ,TYPE_1__*,int ,int ) ;
 int uv_run (int ,int ) ;

int main() {
    loop = uv_default_loop();

    int data[FIB_UNTIL];
    uv_work_t req[FIB_UNTIL];
    int i;
    for (i = 0; i < FIB_UNTIL; i++) {
        data[i] = i;
        req[i].data = (void *) &data[i];
        uv_queue_work(loop, &req[i], fib, after_fib);
    }

    return uv_run(loop, UV_RUN_DEFAULT);
}
