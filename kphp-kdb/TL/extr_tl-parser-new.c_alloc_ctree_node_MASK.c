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
struct tl_combinator_tree {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tl_combinator_tree*) ; 
 int /*<<< orphan*/  FUNC1 (struct tl_combinator_tree*,int /*<<< orphan*/ ,int) ; 
 struct tl_combinator_tree* FUNC2 (int) ; 

struct tl_combinator_tree *FUNC3 (void) {
  struct tl_combinator_tree *T = FUNC2 (sizeof (*T));
  FUNC0 (T);
  FUNC1 (T, 0, sizeof (*T));
  return T;
}