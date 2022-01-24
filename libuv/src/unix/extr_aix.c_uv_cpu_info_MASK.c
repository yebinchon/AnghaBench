#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ nice; int /*<<< orphan*/  irq; int /*<<< orphan*/  idle; int /*<<< orphan*/  sys; int /*<<< orphan*/  user; } ;
struct TYPE_12__ {int speed; TYPE_1__ cpu_times; int /*<<< orphan*/  model; } ;
typedef  TYPE_2__ uv_cpu_info_t ;
typedef  int /*<<< orphan*/  ps_total ;
struct TYPE_13__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ perfstat_id_t ;
struct TYPE_14__ {int processorHZ; int /*<<< orphan*/  description; } ;
typedef  TYPE_4__ perfstat_cpu_total_t ;
struct TYPE_15__ {int /*<<< orphan*/  wait; int /*<<< orphan*/  idle; int /*<<< orphan*/  sys; int /*<<< orphan*/  user; } ;
typedef  TYPE_5__ perfstat_cpu_t ;

/* Variables and functions */
 int /*<<< orphan*/  FIRST_CPU ; 
 int UV_ENOMEM ; 
 int UV_ENOSYS ; 
 int FUNC0 (TYPE_3__*,TYPE_5__*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC6(uv_cpu_info_t** cpu_infos, int* count) {
  uv_cpu_info_t* cpu_info;
  perfstat_cpu_total_t ps_total;
  perfstat_cpu_t* ps_cpus;
  perfstat_id_t cpu_id;
  int result, ncpus, idx = 0;

  result = FUNC1(NULL, &ps_total, sizeof(ps_total), 1);
  if (result == -1) {
    return UV_ENOSYS;
  }

  ncpus = result = FUNC0(NULL, NULL, sizeof(perfstat_cpu_t), 0);
  if (result == -1) {
    return UV_ENOSYS;
  }

  ps_cpus = (perfstat_cpu_t*) FUNC3(ncpus * sizeof(perfstat_cpu_t));
  if (!ps_cpus) {
    return UV_ENOMEM;
  }

  /* TODO(bnoordhuis) Check uv__strscpy() return value. */
  FUNC5(cpu_id.name, FIRST_CPU, sizeof(cpu_id.name));
  result = FUNC0(&cpu_id, ps_cpus, sizeof(perfstat_cpu_t), ncpus);
  if (result == -1) {
    FUNC2(ps_cpus);
    return UV_ENOSYS;
  }

  *cpu_infos = (uv_cpu_info_t*) FUNC3(ncpus * sizeof(uv_cpu_info_t));
  if (!*cpu_infos) {
    FUNC2(ps_cpus);
    return UV_ENOMEM;
  }

  *count = ncpus;

  cpu_info = *cpu_infos;
  while (idx < ncpus) {
    cpu_info->speed = (int)(ps_total.processorHZ / 1000000);
    cpu_info->model = FUNC4(ps_total.description);
    cpu_info->cpu_times.user = ps_cpus[idx].user;
    cpu_info->cpu_times.sys = ps_cpus[idx].sys;
    cpu_info->cpu_times.idle = ps_cpus[idx].idle;
    cpu_info->cpu_times.irq = ps_cpus[idx].wait;
    cpu_info->cpu_times.nice = 0;
    cpu_info++;
    idx++;
  }

  FUNC2(ps_cpus);
  return 0;
}