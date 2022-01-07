
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int process_called; TYPE_2__* pathconf; } ;
typedef TYPE_3__ h2o_req_t ;
typedef int h2o_hostconf_t ;
struct TYPE_8__ {int entries; } ;
struct TYPE_9__ {TYPE_1__ handlers; } ;


 int assert (int) ;
 int call_handlers (TYPE_3__*,int ) ;
 int * h2o_req_setup (TYPE_3__*) ;
 int setup_pathconf (TYPE_3__*,int *) ;

void h2o_process_request(h2o_req_t *req)
{
    assert(!req->process_called);
    req->process_called = 1;

    if (req->pathconf == ((void*)0)) {
        h2o_hostconf_t *hostconf = h2o_req_setup(req);
        setup_pathconf(req, hostconf);
    }
    call_handlers(req, req->pathconf->handlers.entries);
}
