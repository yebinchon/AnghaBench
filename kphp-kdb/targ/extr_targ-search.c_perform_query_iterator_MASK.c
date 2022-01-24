#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* iterator_t ;
struct TYPE_4__ {int pos; int (* jump_to ) (TYPE_1__*,int) ;} ;

/* Variables and functions */
 int INFTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  Qq ; 
 int R_tot ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (TYPE_1__*,int) ; 
 int verbosity ; 

int FUNC6 (void) {
  if (verbosity > 1) {
    FUNC2 (stderr, "performing query via iterators\n");
  }

  FUNC0 (6);

  iterator_t I = FUNC1 (Qq, 1);

  FUNC0 (7);

  int x = I->pos;
  while (x < INFTY) {
    FUNC4 (x);
    x = I->jump_to (I, x + 1);
  }

  FUNC0 (8);

  FUNC3 ();

  FUNC0 (9);

  return R_tot;
}