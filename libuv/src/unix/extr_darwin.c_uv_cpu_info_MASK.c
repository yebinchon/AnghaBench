#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_address_t ;
struct TYPE_6__ {unsigned int user; unsigned int nice; unsigned int sys; unsigned int idle; scalar_t__ irq; } ;
struct TYPE_7__ {unsigned int speed; int /*<<< orphan*/  model; TYPE_1__ cpu_times; } ;
typedef  TYPE_2__ uv_cpu_info_t ;
typedef  unsigned int uint64_t ;
typedef  int /*<<< orphan*/  processor_info_array_t ;
struct TYPE_8__ {scalar_t__* cpu_ticks; } ;
typedef  TYPE_3__ processor_cpu_load_info_data_t ;
typedef  int natural_t ;
typedef  int /*<<< orphan*/  model ;
typedef  int /*<<< orphan*/  mach_msg_type_number_t ;
typedef  int /*<<< orphan*/  cpuspeed ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  PROCESSOR_CPU_LOAD_INFO ; 
 int UV_EINVAL ; 
 int UV_ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _SC_CLK_TCK ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,...) ; 
 TYPE_2__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(uv_cpu_info_t** cpu_infos, int* count) {
  unsigned int ticks = (unsigned int)FUNC4(_SC_CLK_TCK),
               multiplier = ((uint64_t)1000L / ticks);
  char model[512];
  uint64_t cpuspeed;
  size_t size;
  unsigned int i;
  natural_t numcpus;
  mach_msg_type_number_t msg_type;
  processor_cpu_load_info_data_t *info;
  uv_cpu_info_t* cpu_info;

  size = sizeof(model);
  if (FUNC5("machdep.cpu.brand_string", &model, &size, NULL, 0) &&
      FUNC5("hw.model", &model, &size, NULL, 0)) {
    return FUNC0(errno);
  }

  size = sizeof(cpuspeed);
  if (FUNC5("hw.cpufrequency", &cpuspeed, &size, NULL, 0))
    return FUNC0(errno);

  if (FUNC1(FUNC2(), PROCESSOR_CPU_LOAD_INFO, &numcpus,
                          (processor_info_array_t*)&info,
                          &msg_type) != KERN_SUCCESS) {
    return UV_EINVAL;  /* FIXME(bnoordhuis) Translate error. */
  }

  *cpu_infos = FUNC6(numcpus * sizeof(**cpu_infos));
  if (!(*cpu_infos)) {
    FUNC8(FUNC3(), (vm_address_t)info, msg_type);
    return UV_ENOMEM;
  }

  *count = numcpus;

  for (i = 0; i < numcpus; i++) {
    cpu_info = &(*cpu_infos)[i];

    cpu_info->cpu_times.user = (uint64_t)(info[i].cpu_ticks[0]) * multiplier;
    cpu_info->cpu_times.nice = (uint64_t)(info[i].cpu_ticks[3]) * multiplier;
    cpu_info->cpu_times.sys = (uint64_t)(info[i].cpu_ticks[1]) * multiplier;
    cpu_info->cpu_times.idle = (uint64_t)(info[i].cpu_ticks[2]) * multiplier;
    cpu_info->cpu_times.irq = 0;

    cpu_info->model = FUNC7(model);
    cpu_info->speed = cpuspeed/1000000;
  }
  FUNC8(FUNC3(), (vm_address_t)info, msg_type);

  return 0;
}