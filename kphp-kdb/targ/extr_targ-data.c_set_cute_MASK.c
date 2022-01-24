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
struct TYPE_3__ {int /*<<< orphan*/  cute; } ;
typedef  TYPE_1__ user_t ;
struct lev_cute {scalar_t__ type; int /*<<< orphan*/  cute; int /*<<< orphan*/  user_id; } ;

/* Variables and functions */
 scalar_t__ LEV_TARG_CUTE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2 (struct lev_cute *E) {
  FUNC0 (E->type == LEV_TARG_CUTE);
  user_t *U = FUNC1 (E->user_id);
  if (U) {
    U->cute = E->cute;
  }
}