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
struct tree {scalar_t__ type; int nc; TYPE_1__** c; } ;
struct tl_combinator_tree {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 struct tl_combinator_tree* L ; 
 int /*<<< orphan*/  FUNC0 (struct tl_combinator_tree*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct tl_combinator_tree*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ type_percent ; 
 scalar_t__ type_term ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 

struct tl_combinator_tree *FUNC5 (struct tree *T, int s) {
  FUNC4 (2, "tl_parse_term: s = %d\n", s);
  FUNC2 (T->type == type_term);
  int i = 0;
  while (i < T->nc && T->c[i]->type == type_percent) { i ++; s ++; } 
  FUNC2 (i < T->nc);
  FUNC0 (L);
  while (i < T->nc) {
    FUNC1 (FUNC3 (T->c[i], s), L);
    s = 0;
    i ++;
  }
  return L;
}