
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_3__* pathconf; TYPE_1__* scheme; int authority; int * overrides; } ;
typedef TYPE_4__ h2o_req_t ;
typedef int h2o_hostconf_t ;
struct TYPE_10__ {int entries; } ;
struct TYPE_11__ {TYPE_2__ handlers; } ;
struct TYPE_9__ {int default_port; } ;


 int call_handlers (TYPE_4__*,int ) ;
 int * find_hostconf (int **,int ,int ) ;
 int h2o__proxy_process_request (TYPE_4__*) ;
 int setup_pathconf (TYPE_4__*,int *) ;

__attribute__((used)) static void process_resolved_request(h2o_req_t *req, h2o_hostconf_t **hosts)
{
    h2o_hostconf_t *hostconf;
    if (req->overrides == ((void*)0) && (hostconf = find_hostconf(hosts, req->authority, req->scheme->default_port)) != ((void*)0)) {
        setup_pathconf(req, hostconf);
        call_handlers(req, req->pathconf->handlers.entries);
        return;
    }


    h2o__proxy_process_request(req);
}
