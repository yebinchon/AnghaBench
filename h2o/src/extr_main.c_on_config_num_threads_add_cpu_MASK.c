#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* scalar; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_1__ data; } ;
typedef  TYPE_2__ yoml_t ;
typedef  int /*<<< orphan*/  h2o_configurator_context_t ;
typedef  int /*<<< orphan*/  h2o_configurator_command_t ;
struct TYPE_9__ {unsigned int* entries; scalar_t__ size; } ;
struct TYPE_10__ {TYPE_4__ thread_map; } ;

/* Variables and functions */
 scalar_t__ YOML_TYPE_SCALAR ; 
 TYPE_6__ conf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char) ; 
 int FUNC3 (char const*,char*,unsigned int*,...) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static inline int FUNC5(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    if (node->type != YOML_TYPE_SCALAR) {
        FUNC0(cmd, node, "CPUs in cpu sequence must be a scalar");
        return -1;
    }

    const char *cpu_spec = node->data.scalar;
    unsigned cpu_low, cpu_high, cpu_num;
    int pos;
    if (FUNC2(cpu_spec, '-') == NULL) {
        if (FUNC3(cpu_spec, "%u%n", &cpu_low, &pos) != 1 || pos != FUNC4(cpu_spec))
            goto Error;
        cpu_high = cpu_low;
    } else {
        if (FUNC3(cpu_spec, "%u-%u%n", &cpu_low, &cpu_high, &pos) != 2 || pos != FUNC4(cpu_spec))
            goto Error;
        if (cpu_low > cpu_high)
            goto Error;
    }
    for (cpu_num = cpu_low; cpu_num <= cpu_high; cpu_num++) {
        FUNC1(NULL, &conf.thread_map, conf.thread_map.size + 1);
        conf.thread_map.entries[conf.thread_map.size++] = cpu_num;
    }
    return 0;
Error:
    FUNC0(
        cmd, node, "Invalid CPU number: CPUs must be specified as a non-negative number or as a range of non-negative numbers");
    return -1;
}