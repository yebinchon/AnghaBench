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
struct tl_combinator {int args_num; char* id; scalar_t__ var_num; int /*<<< orphan*/  args; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC3 () ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5 (struct tl_combinator *c) {
  c->args_num = FUNC3 ();
  if (verbosity >= 2) {
    FUNC1 (stderr, "c->id = %s, c->args_num = %d\n", c->id, c->args_num);
  }
  if (c->args_num < 0 || c->args_num > 1000) {
    return -1;
  }
  c->args = FUNC4 (sizeof (void *) * c->args_num);
  c->var_num = 0;
  FUNC0 (sizeof (void *) * c->args_num);
  return FUNC2 (c->args, c->args_num, &c->var_num);
}