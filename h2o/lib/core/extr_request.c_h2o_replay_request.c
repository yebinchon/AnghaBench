
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* conn; int * handler; TYPE_3__* pathconf; } ;
typedef TYPE_4__ h2o_req_t ;
typedef int h2o_handler_t ;
struct TYPE_11__ {int size; int ** entries; } ;
struct TYPE_12__ {TYPE_2__ handlers; } ;
struct TYPE_10__ {int hosts; } ;


 int assert (int) ;
 int call_handlers (TYPE_4__*,int **) ;
 int close_generator_and_filters (TYPE_4__*) ;
 int process_resolved_request (TYPE_4__*,int ) ;
 int reset_response (TYPE_4__*) ;

void h2o_replay_request(h2o_req_t *req)
{
    close_generator_and_filters(req);
    reset_response(req);

    if (req->handler != ((void*)0)) {
        h2o_handler_t **handler = req->pathconf->handlers.entries, **end = handler + req->pathconf->handlers.size;
        for (;; ++handler) {
            assert(handler != end);
            if (*handler == req->handler)
                break;
        }
        call_handlers(req, handler);
    } else {
        process_resolved_request(req, req->conn->hosts);
    }
}
