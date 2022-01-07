
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* data; } ;
typedef TYPE_1__ uv_work_t ;


 int UV_RUN_DEFAULT ;
 int after ;
 int async ;
 int fake_download ;
 int loop ;
 int print_progress ;
 int uv_async_init (int ,int *,int ) ;
 int uv_default_loop () ;
 int uv_queue_work (int ,TYPE_1__*,int ,int ) ;
 int uv_run (int ,int ) ;

int main() {
    loop = uv_default_loop();

    uv_work_t req;
    int size = 10240;
    req.data = (void*) &size;

    uv_async_init(loop, &async, print_progress);
    uv_queue_work(loop, &req, fake_download, after);

    return uv_run(loop, UV_RUN_DEFAULT);
}
