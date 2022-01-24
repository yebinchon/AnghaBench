#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* iwdpm_t ;
typedef  TYPE_2__* iwdp_t ;
typedef  int /*<<< orphan*/  iwdp_status ;
struct TYPE_5__ {int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int /*<<< orphan*/ * pc; int /*<<< orphan*/  config; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWDP_ERROR ; 
 int /*<<< orphan*/  IWDP_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

iwdp_status FUNC7(iwdp_t iwdp, const char *device_id,
    int *to_port, int *to_min_port, int *to_max_port) {
  iwdpm_t self = (iwdpm_t)iwdp->state;
  int ret = 0;
  // reparse every time, in case the file has changed
  int is_file = 0;
  if (!self->pc) {
    self->pc = FUNC4();
    if (FUNC1(self->pc, self->config, FUNC6(self->config))) {
      FUNC2(self->pc);
      FUNC0(self->pc, self->config);
      is_file = 1;
    }
  }
  ret = FUNC5(self->pc, device_id, to_port, to_min_port,to_max_port);
  if (is_file) {
    FUNC3(self->pc);
    self->pc = NULL;
  }
  return (ret ? IWDP_ERROR : IWDP_SUCCESS);
}