
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int supports_request_streaming; int on_req; int dispose; int on_context_dispose; int on_context_init; } ;
struct rp_handler_t {int * sockpool; int config; TYPE_1__ super; } ;
typedef int h2o_socketpool_t ;
typedef int h2o_proxy_config_vars_t ;
typedef int h2o_pathconf_t ;


 scalar_t__ h2o_create_handler (int *,int) ;
 int on_context_dispose ;
 int on_context_init ;
 int on_handler_dispose ;
 int on_req ;

void h2o_proxy_register_reverse_proxy(h2o_pathconf_t *pathconf, h2o_proxy_config_vars_t *config, h2o_socketpool_t *sockpool)
{
    struct rp_handler_t *self = (void *)h2o_create_handler(pathconf, sizeof(*self));

    self->super.on_context_init = on_context_init;
    self->super.on_context_dispose = on_context_dispose;
    self->super.dispose = on_handler_dispose;
    self->super.on_req = on_req;
    self->super.supports_request_streaming = 1;
    self->config = *config;
    self->sockpool = sockpool;
}
