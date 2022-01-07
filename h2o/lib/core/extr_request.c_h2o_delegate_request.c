
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * handler; TYPE_2__* pathconf; } ;
typedef TYPE_3__ h2o_req_t ;
typedef int h2o_handler_t ;
struct TYPE_6__ {int size; int ** entries; } ;
struct TYPE_7__ {TYPE_1__ handlers; } ;


 int assert (int) ;
 int call_handlers (TYPE_3__*,int **) ;

void h2o_delegate_request(h2o_req_t *req)
{
    h2o_handler_t **handler = req->pathconf->handlers.entries, **end = handler + req->pathconf->handlers.size;
    for (;; ++handler) {
        assert(handler != end);
        if (*handler == req->handler)
            break;
    }
    ++handler;
    call_handlers(req, handler);
}
