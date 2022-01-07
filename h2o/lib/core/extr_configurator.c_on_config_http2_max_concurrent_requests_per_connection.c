
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
struct TYPE_5__ {int max_concurrent_requests_per_connection; } ;
struct TYPE_6__ {TYPE_1__ http2; } ;


 int h2o_configurator_scanf (int *,int *,char*,int *) ;

__attribute__((used)) static int on_config_http2_max_concurrent_requests_per_connection(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx,
                                                                  yoml_t *node)
{
    return h2o_configurator_scanf(cmd, node, "%zu", &ctx->globalconf->http2.max_concurrent_requests_per_connection);
}
