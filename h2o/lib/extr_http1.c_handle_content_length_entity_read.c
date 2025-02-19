
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct st_h2o_http1_content_length_entity_reader {scalar_t__ content_length; } ;
struct TYPE_4__ {scalar_t__ req_body_bytes_received; } ;
struct st_h2o_http1_conn_t {TYPE_1__ req; TYPE_2__* sock; scalar_t__ _req_entity_reader; } ;
struct TYPE_6__ {size_t size; } ;
struct TYPE_5__ {TYPE_3__* input; } ;


 int handle_one_body_fragment (struct st_h2o_http1_conn_t*,size_t,int) ;

__attribute__((used)) static void handle_content_length_entity_read(struct st_h2o_http1_conn_t *conn)
{
    int complete = 0;
    struct st_h2o_http1_content_length_entity_reader *reader = (void *)conn->_req_entity_reader;
    size_t length = conn->sock->input->size;

    if (conn->req.req_body_bytes_received + conn->sock->input->size >= reader->content_length) {
        complete = 1;
        length = reader->content_length - conn->req.req_body_bytes_received;
    }
    if (!complete && length == 0)
        return;

    handle_one_body_fragment(conn, length, complete);
}
