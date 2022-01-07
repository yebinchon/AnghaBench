
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int yoml_t ;
struct TYPE_5__ {TYPE_1__* globalconf; } ;
typedef TYPE_2__ h2o_configurator_context_t ;
typedef int h2o_configurator_command_t ;
struct TYPE_4__ {int handshake_timeout; } ;


 int config_timeout (int *,int *,int *) ;

__attribute__((used)) static int on_config_handshake_timeout(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    return config_timeout(cmd, node, &ctx->globalconf->handshake_timeout);
}
