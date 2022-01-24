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
struct lev_generic {int dummy; } ;
struct TYPE_2__ {int tot_lists; } ;

/* Variables and functions */
 TYPE_1__ Header ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct lev_generic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lev_generic*) ; 

void FUNC3 (int x, struct lev_generic *E) {
  FUNC0 (0 <= x && x < Header.tot_lists);
  FUNC1 (x, E, FUNC2 (E));
}