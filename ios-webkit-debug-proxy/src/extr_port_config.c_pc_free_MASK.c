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
struct pc_struct {int dummy; } ;
typedef  TYPE_1__* pc_t ;
struct TYPE_6__ {scalar_t__ re; struct TYPE_6__* groups; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(pc_t self) {
  if (self) {
    FUNC2(self);
    FUNC0(self->groups);
    if (self->re) {
      FUNC3(self->re);
    }
    FUNC1(self, 0, sizeof(struct pc_struct));
    FUNC0(self);
  }
}