#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kstat_t ;
struct TYPE_3__ {long ul; } ;
struct TYPE_4__ {TYPE_1__ value; } ;
typedef  TYPE_2__ kstat_named_t ;
typedef  int /*<<< orphan*/  kstat_ctl_t ;

/* Variables and functions */
 int UV_EPERM ; 
 int /*<<< orphan*/  _SC_CLK_TCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 long FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(double* uptime) {
  kstat_ctl_t   *kc;
  kstat_t       *ksp;
  kstat_named_t *knp;

  long hz = FUNC5(_SC_CLK_TCK);

  kc = FUNC3();
  if (kc == NULL)
    return UV_EPERM;

  ksp = FUNC2(kc, (char*) "unix", 0, (char*) "system_misc");
  if (FUNC4(kc, ksp, NULL) == -1) {
    *uptime = -1;
  } else {
    knp = (kstat_named_t*)  FUNC1(ksp, (char*) "clk_intr");
    *uptime = knp->value.ul / hz;
  }
  FUNC0(kc);

  return 0;
}