#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int speed; int /*<<< orphan*/  model; } ;
typedef  TYPE_3__ uv_cpu_info_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
struct TYPE_15__ {int cpu_count; } ;
typedef  TYPE_4__ system_info ;
typedef  scalar_t__ status_t ;
struct TYPE_12__ {int default_frequency; } ;
struct TYPE_13__ {TYPE_1__ core; } ;
struct TYPE_16__ {scalar_t__ type; TYPE_2__ data; } ;
typedef  TYPE_5__ cpu_topology_node_info ;

/* Variables and functions */
 scalar_t__ B_OK ; 
 scalar_t__ B_TOPOLOGY_CORE ; 
 int UV_EINVAL ; 
 int UV_ENOMEM ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_5__*,int*) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 TYPE_3__* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 TYPE_5__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int FUNC7(uv_cpu_info_t** cpu_infos, int* count) {
  cpu_topology_node_info* topology_infos;
  int i;
  status_t status;
  system_info system;
  uint32_t topology_count;
  uint64_t cpuspeed;
  uv_cpu_info_t* cpu_info;

  if (cpu_infos == NULL || count == NULL)
    return UV_EINVAL;

  status = FUNC1(NULL, &topology_count);
  if (status != B_OK)
    return FUNC0(status);

  topology_infos = FUNC5(topology_count * sizeof(*topology_infos));
  if (topology_infos == NULL)
    return UV_ENOMEM;

  status = FUNC1(topology_infos, &topology_count);
  if (status != B_OK) {
    FUNC4(topology_infos);
    return FUNC0(status);
  }

  cpuspeed = 0;
  for (i = 0; i < (int)topology_count; i++) {
    if (topology_infos[i].type == B_TOPOLOGY_CORE) {
      cpuspeed = topology_infos[i].data.core.default_frequency;
      break;
    }
  }

  FUNC4(topology_infos);

  status = FUNC2(&system);
  if (status != B_OK)
    return FUNC0(status);

  *cpu_infos = FUNC3(system.cpu_count, sizeof(**cpu_infos));
  if (*cpu_infos == NULL)
    return UV_ENOMEM;

  /* CPU time and model are not exposed by Haiku. */
  cpu_info = *cpu_infos;
  for (i = 0; i < (int)system.cpu_count; i++) {
    cpu_info->model = FUNC6("unknown");
    cpu_info->speed = (int)(cpuspeed / 1000000);
    cpu_info++;
  }
  *count = system.cpu_count;

  return 0;
}