
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int scalar; } ;
struct TYPE_9__ {TYPE_2__ data; } ;
typedef TYPE_3__ yoml_t ;
struct TYPE_10__ {TYPE_1__* globalconf; } ;
typedef TYPE_4__ h2o_configurator_context_t ;
typedef int h2o_configurator_command_t ;
struct TYPE_7__ {int server_name; } ;


 int SIZE_MAX ;
 int h2o_strdup (int *,int ,int ) ;

__attribute__((used)) static int on_config_server_name(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    ctx->globalconf->server_name = h2o_strdup(((void*)0), node->data.scalar, SIZE_MAX);
    return 0;
}
