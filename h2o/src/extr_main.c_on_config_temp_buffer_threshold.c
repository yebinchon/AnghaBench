
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int scalar; } ;
struct TYPE_8__ {TYPE_1__ data; } ;
typedef TYPE_2__ yoml_t ;
typedef int h2o_configurator_context_t ;
typedef int h2o_configurator_command_t ;
struct TYPE_9__ {int threshold; } ;


 int SIZE_MAX ;
 int h2o_configurator_errprintf (int *,TYPE_2__*,char*) ;
 scalar_t__ h2o_configurator_scanf (int *,TYPE_2__*,char*,int*) ;
 TYPE_4__ h2o_socket_buffer_mmap_settings ;
 scalar_t__ strcasecmp (int ,char*) ;

__attribute__((used)) static int on_config_temp_buffer_threshold(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{

    if (strcasecmp(node->data.scalar, "OFF") == 0) {
        h2o_socket_buffer_mmap_settings.threshold = SIZE_MAX;
        return 0;
    }


    if (h2o_configurator_scanf(cmd, node, "%zu", &h2o_socket_buffer_mmap_settings.threshold) != 0)
        return -1;

    if (h2o_socket_buffer_mmap_settings.threshold < 1048576) {
        h2o_configurator_errprintf(cmd, node, "threshold is too low (must be >= 1048576; OFF to disable)");
        return -1;
    }

    return 0;
}
