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
struct tl_combinator_tree {int dummy; } ;

/* Variables and functions */
 struct tl_combinator_tree* L ; 
 int /*<<< orphan*/  FUNC0 (struct tl_combinator_tree*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct tl_combinator_tree*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ type_subexpr ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 

struct tl_combinator_tree *FUNC5 (struct tree *T, int s) {
  FUNC2 (T->type == type_subexpr);
  FUNC2 (T->nc >= 1);
  FUNC4 (2, "tl_parse_subexpr: s = %d\n", s);
  int i;
  FUNC0 (L);
  for (i = 0; i < T->nc; i++) {
    FUNC1 (FUNC3 (T->c[i], s), L);
    s = 0;
  }
  return L;
}