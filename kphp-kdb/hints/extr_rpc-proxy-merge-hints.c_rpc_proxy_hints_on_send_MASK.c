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
struct hints_extra {int /*<<< orphan*/  sent_limit; int /*<<< orphan*/  type; int /*<<< orphan*/  user_id; int /*<<< orphan*/  sent_op; } ;
struct gather {struct hints_extra* extra; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ) ; 

int FUNC4 (struct gather *G, int num) {
  struct hints_extra *extra = G->extra;
  FUNC2 (extra->sent_op);
  FUNC2 (extra->user_id);
  FUNC2 (extra->type);
  FUNC2 (extra->sent_limit);
  FUNC3 (4, "tl_fetch_unread () = %d\n", FUNC1 ());
  FUNC0 (FUNC1 (), 0);
  return 0;
}