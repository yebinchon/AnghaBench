
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int loop; int should_exit; } ;


 int INT32_MAX ;
 int UV_RUN_ONCE ;
 int h2o_evloop_run (int ,int ) ;
 int uv_run (int ,int ) ;
 TYPE_1__ worker_thread ;

__attribute__((used)) static void *worker_main(void *_unused)
{
    while (!worker_thread.should_exit) {



        h2o_evloop_run(worker_thread.loop, INT32_MAX);

    }

    return ((void*)0);
}
