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
struct TYPE_4__ {int /*<<< orphan*/  new_v; } ;
struct TYPE_5__ {scalar_t__ new_objects_n; TYPE_1__ hidden_state; int /*<<< orphan*/  dyn_snapshots; int /*<<< orphan*/  prm; } ;
typedef  TYPE_2__ data ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  is_trivial_pass ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3 (data *d, int pass_n) {
  return  d->new_objects_n == 0  &&
          FUNC0 (is_trivial_pass, &d->prm, pass_n) &&
          FUNC2 (&d->dyn_snapshots) == 0 &&
          FUNC1 (&d->hidden_state.new_v) == 0 &&
          1;
}