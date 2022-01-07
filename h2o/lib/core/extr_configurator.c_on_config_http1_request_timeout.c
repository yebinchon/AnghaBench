
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int yoml_t ;
struct TYPE_7__ {TYPE_2__* globalconf; } ;
typedef TYPE_3__ h2o_configurator_context_t ;
typedef int h2o_configurator_command_t ;
struct TYPE_5__ {int req_timeout; } ;
struct TYPE_6__ {TYPE_1__ http1; } ;


 int config_timeout (int *,int *,int *) ;

__attribute__((used)) static int on_config_http1_request_timeout(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    return config_timeout(cmd, node, &ctx->globalconf->http1.req_timeout);
}
