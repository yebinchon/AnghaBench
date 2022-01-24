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
struct mult_iterator {scalar_t__ pos; int /*<<< orphan*/  (* jump_to ) (int /*<<< orphan*/ ,scalar_t__) ;} ;
struct lev_delete_group {int group_id; } ;
typedef  int /*<<< orphan*/  iterator_t ;

/* Variables and functions */
 scalar_t__ INFTY ; 
 unsigned int MAX_USERS ; 
 scalar_t__* R ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  q_grp_id ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC9 (struct lev_delete_group *E) {
  int group_id = E->group_id, num = 0, i;

  FUNC2 ();

  if (FUNC7 (FUNC6 (q_grp_id, group_id))) {
    FUNC4 (0);
    struct mult_iterator *I = (struct mult_iterator *) FUNC1 (FUNC6 (q_grp_id, group_id));
    while (I->pos < INFTY) {
      R[num++] = I->pos;
      I->jump_to ((iterator_t)I, I->pos + 1);
    }
    FUNC5 (0);
    FUNC0 ((unsigned)num <= MAX_USERS);
    for (i = 0; i < num; i++) {
      FUNC3 (R[i], group_id);
    }
  }

  return 1; // does now work
}