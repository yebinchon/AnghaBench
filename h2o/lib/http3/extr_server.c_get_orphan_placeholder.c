
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * orphan_placeholder; } ;
struct TYPE_4__ {TYPE_1__ reqs; } ;
struct st_h2o_http3_server_conn_t {TYPE_2__ scheduler; } ;
typedef int h2o_http2_scheduler_node_t ;


 int h2o_http2_scheduler_init (int *) ;
 int * h2o_mem_alloc (int) ;

__attribute__((used)) static h2o_http2_scheduler_node_t *get_orphan_placeholder(struct st_h2o_http3_server_conn_t *conn)
{
    if (conn->scheduler.reqs.orphan_placeholder == ((void*)0)) {
        conn->scheduler.reqs.orphan_placeholder = h2o_mem_alloc(sizeof(*conn->scheduler.reqs.orphan_placeholder));
        h2o_http2_scheduler_init(conn->scheduler.reqs.orphan_placeholder);
    }
    return conn->scheduler.reqs.orphan_placeholder;
}
