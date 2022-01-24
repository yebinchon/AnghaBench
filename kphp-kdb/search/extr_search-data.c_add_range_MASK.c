#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int minr; int maxr; } ;

/* Variables and functions */
 TYPE_1__* Q_range ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 

void FUNC2 (int type, int min_value, int max_value) {
  int t = FUNC1 (type);
  FUNC0 (t >= 0);
  if (Q_range[t].minr < min_value) {
    Q_range[t].minr = min_value;
  }
  if (Q_range[t].maxr > max_value) {
    Q_range[t].maxr = max_value;
  }
}