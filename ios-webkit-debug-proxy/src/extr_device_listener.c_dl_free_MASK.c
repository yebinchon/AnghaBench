#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct dl_struct {int dummy; } ;
struct dl_private {int dummy; } ;
typedef  TYPE_1__* dl_t ;
typedef  TYPE_1__* dl_private_t ;
struct TYPE_6__ {int /*<<< orphan*/  device_num_to_device_id; int /*<<< orphan*/  in; struct TYPE_6__* private_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC4(dl_t self) {
  if (self) {
    dl_private_t my = self->private_state;
    if (my) {
      FUNC0(my->in);
      FUNC2(my->device_num_to_device_id);
      FUNC3(my, 0, sizeof(struct dl_private));
      FUNC1(my);
    }
    FUNC3(self, 0, sizeof(struct dl_struct));
    FUNC1(self);
  }
}