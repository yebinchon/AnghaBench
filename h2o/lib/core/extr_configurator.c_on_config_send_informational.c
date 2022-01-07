
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
struct TYPE_4__ {int send_informational_mode; } ;


 int H2O_SEND_INFORMATIONAL_MODE_ALL ;
 int H2O_SEND_INFORMATIONAL_MODE_EXCEPT_H1 ;
 int H2O_SEND_INFORMATIONAL_MODE_NONE ;
 int h2o_configurator_get_one_of (int *,int *,char*) ;

__attribute__((used)) static int on_config_send_informational(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    switch (h2o_configurator_get_one_of(cmd, node, "except-h1,none,all")) {
    case 0:
        ctx->globalconf->send_informational_mode = H2O_SEND_INFORMATIONAL_MODE_EXCEPT_H1;
        break;
    case 1:
        ctx->globalconf->send_informational_mode = H2O_SEND_INFORMATIONAL_MODE_NONE;
        break;
    case 2:
        ctx->globalconf->send_informational_mode = H2O_SEND_INFORMATIONAL_MODE_ALL;
        break;
    default:
        return -1;
    }
    return 0;
}
