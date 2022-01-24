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
struct item {int extra; } ;

/* Variables and functions */
 int FLAG_DELETED ; 
 int /*<<< orphan*/  ONLY_FIND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (long long) ; 
 struct item* FUNC2 (long long,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct item*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,long long,struct item*,struct item*) ; 

int FUNC5 (int *rate, long long item_id, int p) {
  struct item *I = FUNC2 (item_id, ONLY_FIND);
  struct item *II = (struct item*) FUNC1 (item_id);

  FUNC4 (2, "get_single_rate(%016llx): %p %p\n", item_id, I, II);

  if (II) {
    FUNC0 (!I);
    *rate = FUNC3 (II, p);
    return 1;
  }

  if (!I || (I->extra & FLAG_DELETED)) {
    return 0;
  }
  *rate = FUNC3 (I, p);
  return 1;
}