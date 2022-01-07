
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * req; } ;
struct st_h2o_status_collector_t {TYPE_1__ src; } ;


 int h2o_mem_release_shared (struct st_h2o_status_collector_t*) ;

__attribute__((used)) static void on_req_close(void *p)
{
    struct st_h2o_status_collector_t *collector = *(void **)p;
    collector->src.req = ((void*)0);
    h2o_mem_release_shared(collector);
}
