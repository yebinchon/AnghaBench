#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ nice; scalar_t__ irq; scalar_t__ idle; scalar_t__ sys; scalar_t__ user; } ;
struct TYPE_11__ {TYPE_2__ cpu_times; int /*<<< orphan*/ * model; scalar_t__ speed; } ;
typedef  TYPE_3__ uv_cpu_info_t ;
typedef  int /*<<< orphan*/  kstat_t ;
struct TYPE_9__ {scalar_t__ ui64; scalar_t__ i64; scalar_t__ i32; } ;
struct TYPE_12__ {scalar_t__ data_type; TYPE_1__ value; } ;
typedef  TYPE_4__ kstat_named_t ;
typedef  int /*<<< orphan*/  kstat_ctl_t ;

/* Variables and functions */
 scalar_t__ KSTAT_DATA_INT32 ; 
 scalar_t__ KSTAT_DATA_INT64 ; 
 scalar_t__ KSTAT_DATA_STRING ; 
 scalar_t__ KSTAT_DATA_UINT64 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int UV_ENOMEM ; 
 int UV_EPERM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,int,char*) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC7 (int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(uv_cpu_info_t** cpu_infos, int* count) {
  int           lookup_instance;
  kstat_ctl_t   *kc;
  kstat_t       *ksp;
  kstat_named_t *knp;
  uv_cpu_info_t* cpu_info;

  kc = FUNC5();
  if (kc == NULL)
    return UV_EPERM;

  /* Get count of cpus */
  lookup_instance = 0;
  while ((ksp = FUNC4(kc, (char*) "cpu_info", lookup_instance, NULL))) {
    lookup_instance++;
  }

  *cpu_infos = FUNC7(lookup_instance * sizeof(**cpu_infos));
  if (!(*cpu_infos)) {
    FUNC2(kc);
    return UV_ENOMEM;
  }

  *count = lookup_instance;

  cpu_info = *cpu_infos;
  lookup_instance = 0;
  while ((ksp = FUNC4(kc, (char*) "cpu_info", lookup_instance, NULL))) {
    if (FUNC6(kc, ksp, NULL) == -1) {
      cpu_info->speed = 0;
      cpu_info->model = NULL;
    } else {
      knp = FUNC3(ksp, (char*) "clock_MHz");
      FUNC1(knp->data_type == KSTAT_DATA_INT32 ||
             knp->data_type == KSTAT_DATA_INT64);
      cpu_info->speed = (knp->data_type == KSTAT_DATA_INT32) ? knp->value.i32
                                                             : knp->value.i64;

      knp = FUNC3(ksp, (char*) "brand");
      FUNC1(knp->data_type == KSTAT_DATA_STRING);
      cpu_info->model = FUNC8(FUNC0(knp));
    }

    lookup_instance++;
    cpu_info++;
  }

  cpu_info = *cpu_infos;
  lookup_instance = 0;
  for (;;) {
    ksp = FUNC4(kc, (char*) "cpu", lookup_instance, (char*) "sys");

    if (ksp == NULL)
      break;

    if (FUNC6(kc, ksp, NULL) == -1) {
      cpu_info->cpu_times.user = 0;
      cpu_info->cpu_times.nice = 0;
      cpu_info->cpu_times.sys = 0;
      cpu_info->cpu_times.idle = 0;
      cpu_info->cpu_times.irq = 0;
    } else {
      knp = FUNC3(ksp, (char*) "cpu_ticks_user");
      FUNC1(knp->data_type == KSTAT_DATA_UINT64);
      cpu_info->cpu_times.user = knp->value.ui64;

      knp = FUNC3(ksp, (char*) "cpu_ticks_kernel");
      FUNC1(knp->data_type == KSTAT_DATA_UINT64);
      cpu_info->cpu_times.sys = knp->value.ui64;

      knp = FUNC3(ksp, (char*) "cpu_ticks_idle");
      FUNC1(knp->data_type == KSTAT_DATA_UINT64);
      cpu_info->cpu_times.idle = knp->value.ui64;

      knp = FUNC3(ksp, (char*) "intr");
      FUNC1(knp->data_type == KSTAT_DATA_UINT64);
      cpu_info->cpu_times.irq = knp->value.ui64;
      cpu_info->cpu_times.nice = 0;
    }

    lookup_instance++;
    cpu_info++;
  }

  FUNC2(kc);

  return 0;
}