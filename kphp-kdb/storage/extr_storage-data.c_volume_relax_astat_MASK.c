#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int binlogs; int /*<<< orphan*/ * B; } ;
typedef  TYPE_1__ volume_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,double) ; 

__attribute__((used)) static void FUNC1 (volume_t *V, double e) {
  int i;
  for (i = 0; i < V->binlogs; i++) {
    FUNC0 (V->B[i], e);
  }
}