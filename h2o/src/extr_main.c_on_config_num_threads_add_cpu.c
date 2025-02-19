
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* scalar; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_1__ data; } ;
typedef TYPE_2__ yoml_t ;
typedef int h2o_configurator_context_t ;
typedef int h2o_configurator_command_t ;
struct TYPE_9__ {unsigned int* entries; scalar_t__ size; } ;
struct TYPE_10__ {TYPE_4__ thread_map; } ;


 scalar_t__ YOML_TYPE_SCALAR ;
 TYPE_6__ conf ;
 int h2o_configurator_errprintf (int *,TYPE_2__*,char*) ;
 int h2o_vector_reserve (int *,TYPE_4__*,scalar_t__) ;
 int * index (char const*,char) ;
 int sscanf (char const*,char*,unsigned int*,...) ;
 int strlen (char const*) ;

__attribute__((used)) static inline int on_config_num_threads_add_cpu(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    if (node->type != YOML_TYPE_SCALAR) {
        h2o_configurator_errprintf(cmd, node, "CPUs in cpu sequence must be a scalar");
        return -1;
    }

    const char *cpu_spec = node->data.scalar;
    unsigned cpu_low, cpu_high, cpu_num;
    int pos;
    if (index(cpu_spec, '-') == ((void*)0)) {
        if (sscanf(cpu_spec, "%u%n", &cpu_low, &pos) != 1 || pos != strlen(cpu_spec))
            goto Error;
        cpu_high = cpu_low;
    } else {
        if (sscanf(cpu_spec, "%u-%u%n", &cpu_low, &cpu_high, &pos) != 2 || pos != strlen(cpu_spec))
            goto Error;
        if (cpu_low > cpu_high)
            goto Error;
    }
    for (cpu_num = cpu_low; cpu_num <= cpu_high; cpu_num++) {
        h2o_vector_reserve(((void*)0), &conf.thread_map, conf.thread_map.size + 1);
        conf.thread_map.entries[conf.thread_map.size++] = cpu_num;
    }
    return 0;
Error:
    h2o_configurator_errprintf(
        cmd, node, "Invalid CPU number: CPUs must be specified as a non-negative number or as a range of non-negative numbers");
    return -1;
}
