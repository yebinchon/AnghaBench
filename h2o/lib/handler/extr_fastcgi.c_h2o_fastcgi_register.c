
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int h2o_url_t ;
typedef int h2o_socketpool_target_t ;
typedef int h2o_pathconf_t ;
struct TYPE_10__ {int len; int * base; } ;
struct TYPE_9__ {int keepalive_timeout; TYPE_4__ document_root; } ;
struct TYPE_7__ {int on_req; int dispose; int on_context_dispose; int on_context_init; } ;
struct TYPE_8__ {TYPE_3__ config; int sockpool; TYPE_1__ super; } ;
typedef TYPE_2__ h2o_fastcgi_handler_t ;
typedef TYPE_3__ h2o_fastcgi_config_vars_t ;


 int SIZE_MAX ;
 scalar_t__ h2o_create_handler (int *,int) ;
 int * h2o_socketpool_create_target (int *,int *) ;
 int h2o_socketpool_init_specific (int *,int ,int **,int,int *) ;
 int h2o_socketpool_set_timeout (int *,int ) ;
 TYPE_4__ h2o_strdup (int *,int *,int ) ;
 int on_context_dispose ;
 int on_context_init ;
 int on_handler_dispose ;
 int on_req ;

h2o_fastcgi_handler_t *h2o_fastcgi_register(h2o_pathconf_t *pathconf, h2o_url_t *upstream, h2o_fastcgi_config_vars_t *vars)
{
    h2o_fastcgi_handler_t *handler = (void *)h2o_create_handler(pathconf, sizeof(*handler));

    handler->super.on_context_init = on_context_init;
    handler->super.on_context_dispose = on_context_dispose;
    handler->super.dispose = on_handler_dispose;
    handler->super.on_req = on_req;
    handler->config = *vars;
    if (vars->document_root.base != ((void*)0))
        handler->config.document_root = h2o_strdup(((void*)0), vars->document_root.base, vars->document_root.len);

    h2o_socketpool_target_t *target = h2o_socketpool_create_target(upstream, ((void*)0));
    h2o_socketpool_target_t **targets = &target;
    h2o_socketpool_init_specific(&handler->sockpool, SIZE_MAX , targets, 1, ((void*)0));
    h2o_socketpool_set_timeout(&handler->sockpool, handler->config.keepalive_timeout);
    return handler;
}
