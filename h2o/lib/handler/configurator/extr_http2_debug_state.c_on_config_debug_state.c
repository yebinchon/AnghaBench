
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int yoml_t ;
struct TYPE_3__ {int hostconf; } ;
typedef TYPE_1__ h2o_configurator_context_t ;
typedef int h2o_configurator_command_t ;


 int h2o_configurator_get_one_of (int *,int *,char*) ;
 int h2o_http2_debug_state_register (int ,int) ;

__attribute__((used)) static int on_config_debug_state(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    switch (h2o_configurator_get_one_of(cmd, node, "minimum,hpack")) {
    case 0:
        h2o_http2_debug_state_register(ctx->hostconf, 0);
        return 0;
    case 1:
        h2o_http2_debug_state_register(ctx->hostconf, 1);
        return 0;
    default:
        return -1;
    }
}
