
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int scalar; } ;
struct TYPE_7__ {TYPE_1__ data; } ;
typedef TYPE_2__ yoml_t ;
typedef int h2o_configurator_context_t ;
typedef int h2o_configurator_command_t ;
struct TYPE_9__ {int crash_handler; } ;
struct TYPE_8__ {int base; } ;


 int SIZE_MAX ;
 TYPE_5__ conf ;
 TYPE_4__ h2o_strdup (int *,int ,int ) ;

__attribute__((used)) static int on_config_crash_handler(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    conf.crash_handler = h2o_strdup(((void*)0), node->data.scalar, SIZE_MAX).base;
    return 0;
}
