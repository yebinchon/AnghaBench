
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int num_loggers; int loggers; int num_filters; int filters; TYPE_4__* pathconf; int * hostconf; } ;
typedef TYPE_3__ h2o_req_t ;
struct TYPE_8__ {int size; int entries; } ;
struct TYPE_9__ {int size; int entries; } ;
struct TYPE_11__ {int * env; TYPE_1__ _loggers; TYPE_2__ _filters; } ;
typedef TYPE_4__ h2o_pathconf_t ;
typedef int h2o_hostconf_t ;


 int apply_env (TYPE_3__*,int *) ;

void h2o_req_bind_conf(h2o_req_t *req, h2o_hostconf_t *hostconf, h2o_pathconf_t *pathconf)
{
    req->hostconf = hostconf;
    req->pathconf = pathconf;


    req->filters = pathconf->_filters.entries;
    req->num_filters = pathconf->_filters.size;
    req->loggers = pathconf->_loggers.entries;
    req->num_loggers = pathconf->_loggers.size;

    if (pathconf->env != ((void*)0))
        apply_env(req, pathconf->env);
}
