
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int recv_body_blocked; } ;
struct TYPE_3__ {scalar_t__ recv_body_unblocked; } ;
struct st_h2o_http3_server_conn_t {scalar_t__ num_streams_req_streaming; TYPE_2__ delayed_streams; TYPE_1__ num_streams; } ;


 int h2o_linklist_is_empty (int *) ;
 int request_run_delayed (struct st_h2o_http3_server_conn_t*) ;

__attribute__((used)) static void check_run_blocked(struct st_h2o_http3_server_conn_t *conn)
{
    if (conn->num_streams.recv_body_unblocked + conn->num_streams_req_streaming == 0 &&
        !h2o_linklist_is_empty(&conn->delayed_streams.recv_body_blocked))
        request_run_delayed(conn);
}
