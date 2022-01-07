
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int h2o_pathconf_t ;
struct TYPE_14__ {int base; } ;
struct TYPE_11__ {int lineno; int path; TYPE_6__ source; } ;
struct TYPE_9__ {int on_req; int dispose; int on_context_dispose; int on_context_init; } ;
struct TYPE_12__ {int * pathconf; TYPE_3__ config; TYPE_1__ super; } ;
typedef TYPE_4__ h2o_mruby_handler_t ;
struct TYPE_10__ {int len; int * base; } ;
struct TYPE_13__ {int lineno; int * path; TYPE_2__ source; } ;
typedef TYPE_5__ h2o_mruby_config_vars_t ;


 int SIZE_MAX ;
 scalar_t__ h2o_create_handler (int *,int) ;
 TYPE_6__ h2o_strdup (int *,int *,int ) ;
 int on_context_dispose ;
 int on_context_init ;
 int on_handler_dispose ;
 int on_req ;

h2o_mruby_handler_t *h2o_mruby_register(h2o_pathconf_t *pathconf, h2o_mruby_config_vars_t *vars)
{
    h2o_mruby_handler_t *handler = (void *)h2o_create_handler(pathconf, sizeof(*handler));

    handler->super.on_context_init = on_context_init;
    handler->super.on_context_dispose = on_context_dispose;
    handler->super.dispose = on_handler_dispose;
    handler->super.on_req = on_req;
    handler->config.source = h2o_strdup(((void*)0), vars->source.base, vars->source.len);
    if (vars->path != ((void*)0))
        handler->config.path = h2o_strdup(((void*)0), vars->path, SIZE_MAX).base;
    handler->config.lineno = vars->lineno;
    handler->pathconf = pathconf;

    return handler;
}
