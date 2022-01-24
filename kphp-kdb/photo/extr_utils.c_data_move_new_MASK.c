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
struct TYPE_5__ {int /*<<< orphan*/  prm; } ;
typedef  TYPE_1__ data ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  get_i ; 

int FUNC4 (data *d, int i, int j, int local_i, int local_j) {
  if (1) {
    int prev_i = i == 0 ? -1 : FUNC0 (get_i, &d->prm, i - 1);
    FUNC1 (prev_i >= -1);
    FUNC3 (d, prev_i, local_i, local_j);
  }

  return FUNC2 (d, i, j);
}