
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {size_t size; int * elements; } ;
struct TYPE_10__ {TYPE_1__ sequence; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_2__ data; } ;
typedef TYPE_3__ yoml_t ;
typedef int h2o_configurator_context_t ;
typedef int h2o_configurator_command_t ;
struct TYPE_12__ {scalar_t__ size; int* entries; } ;
struct TYPE_13__ {TYPE_5__ thread_map; } ;


 scalar_t__ YOML_TYPE_SCALAR ;
 scalar_t__ YOML_TYPE_SEQUENCE ;
 TYPE_8__ conf ;
 int h2o_configurator_errprintf (int *,TYPE_3__*,char*) ;
 scalar_t__ h2o_configurator_scanf (int *,TYPE_3__*,char*,size_t*) ;
 int h2o_vector_reserve (int *,TYPE_5__*,size_t) ;
 scalar_t__ on_config_num_threads_add_cpu (int *,int *,int ) ;

__attribute__((used)) static int on_config_num_threads(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    conf.thread_map.size = 0;
    if (node->type == YOML_TYPE_SCALAR) {
        size_t i, num_threads = 0;
        if (h2o_configurator_scanf(cmd, node, "%zu", &num_threads) != 0)
            return -1;
        h2o_vector_reserve(((void*)0), &conf.thread_map, num_threads);
        for (i = 0; i < num_threads; i++)
            conf.thread_map.entries[conf.thread_map.size++] = -1;
    } else if (node->type == YOML_TYPE_SEQUENCE) {
        h2o_configurator_errprintf(
            cmd, node, "Can't handle a CPU list, this platform doesn't support thread pinning via `pthread_setaffinity_np`");
        return -1;

    }
    if (conf.thread_map.size == 0) {
        h2o_configurator_errprintf(cmd, node, "num-threads must be >=1");
        return -1;
    }
    return 0;
}
