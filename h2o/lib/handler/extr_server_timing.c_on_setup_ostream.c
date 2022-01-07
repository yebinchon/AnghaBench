
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct st_server_timing_filter_t {scalar_t__ enforce; } ;
struct TYPE_5__ {int content_length; } ;
struct TYPE_6__ {int send_server_timing; int version; TYPE_1__ res; } ;
typedef TYPE_2__ h2o_req_t ;
typedef int h2o_ostream_t ;
typedef int h2o_filter_t ;


 int H2O_SEND_SERVER_TIMING_BASIC ;
 int H2O_SEND_SERVER_TIMING_PROXY ;
 int SIZE_MAX ;
 int h2o_setup_next_ostream (TYPE_2__*,int **) ;

__attribute__((used)) static void on_setup_ostream(h2o_filter_t *_self, h2o_req_t *req, h2o_ostream_t **slot)
{
    struct st_server_timing_filter_t *self = (struct st_server_timing_filter_t *)_self;


    req->send_server_timing = H2O_SEND_SERVER_TIMING_BASIC | H2O_SEND_SERVER_TIMING_PROXY;


    if (0x101 <= req->version && req->version < 0x200 && self->enforce)
        req->res.content_length = SIZE_MAX;

    h2o_setup_next_ostream(req, slot);
}
