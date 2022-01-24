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
struct forth_stack {int /*<<< orphan*/  top; TYPE_1__* x; } ;
struct TYPE_2__ {int /*<<< orphan*/  a; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct forth_stack*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ft_int ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2 (struct forth_stack *st, int *i, char *who) {
  if (!FUNC0 (st, ft_int, who)) {
    return 0;
  }
  FUNC1 (i, &st->x[st->top--].a, 4);
  return 1;
}