
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* pathconf; } ;
typedef TYPE_3__ h2o_req_t ;
typedef int h2o_hostconf_t ;
typedef int h2o_handler_t ;
struct TYPE_7__ {scalar_t__ size; int ** entries; } ;
struct TYPE_8__ {TYPE_1__ handlers; } ;


 int * h2o_req_setup (TYPE_3__*) ;
 int setup_pathconf (TYPE_3__*,int *) ;

h2o_handler_t *h2o_get_first_handler(h2o_req_t *req)
{
    h2o_hostconf_t *hostconf = h2o_req_setup(req);
    setup_pathconf(req, hostconf);
    return req->pathconf->handlers.size != 0 ? req->pathconf->handlers.entries[0] : ((void*)0);
}
