#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tree {scalar_t__ type; int nc; int /*<<< orphan*/ * c; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ type_constr_declarations ; 

int FUNC3 (struct tree *T) {
  FUNC1 (T->type == type_constr_declarations);
  int i;
  for (i = 0; i < T->nc; i++) {
    FUNC0 (FUNC2 (T->c[i], 0));
  }
  return 1;
}