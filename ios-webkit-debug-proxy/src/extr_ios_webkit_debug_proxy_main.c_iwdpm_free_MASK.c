#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct iwdpm_struct {int dummy; } ;
typedef  TYPE_1__* iwdpm_t ;
struct TYPE_5__ {struct TYPE_5__* sim_wi_socket_addr; struct TYPE_5__* frontend; struct TYPE_5__* config; int /*<<< orphan*/  sm; int /*<<< orphan*/  iwdp; int /*<<< orphan*/  pc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(iwdpm_t self) {
  if (self) {
    FUNC3(self->pc);
    FUNC1(self->iwdp);
    FUNC4(self->sm);
    FUNC0(self->config);
    FUNC0(self->frontend);
    FUNC0(self->sim_wi_socket_addr);
    FUNC2(self, 0, sizeof(struct iwdpm_struct));
    FUNC0(self);
  }
}