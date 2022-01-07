
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int yoml_t ;
struct TYPE_9__ {TYPE_3__* globalconf; } ;
typedef TYPE_4__ h2o_configurator_context_t ;
typedef int h2o_configurator_command_t ;
struct TYPE_6__ {int max_additional_delay; } ;
struct TYPE_7__ {TYPE_1__ latency_optimization; } ;
struct TYPE_8__ {TYPE_2__ http2; } ;


 int h2o_configurator_errprintf (int *,int *,char*) ;
 scalar_t__ h2o_configurator_scanf (int *,int *,char*,double*) ;

__attribute__((used)) static int on_config_http2_latency_optimization_max_additional_delay(h2o_configurator_command_t *cmd,
                                                                     h2o_configurator_context_t *ctx, yoml_t *node)
{
    double ratio;
    if (h2o_configurator_scanf(cmd, node, "%lf", &ratio) != 0)
        return -1;
    if (!(0.0 < ratio)) {
        h2o_configurator_errprintf(cmd, node, "ratio must be a positive number");
        return -1;
    }
    ctx->globalconf->http2.latency_optimization.max_additional_delay = 100 * ratio;
    return 0;
}
