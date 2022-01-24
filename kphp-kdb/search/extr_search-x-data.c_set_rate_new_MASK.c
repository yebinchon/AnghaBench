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
 int /*<<< orphan*/  FUNC3 (struct item*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,long long,int,int) ; 

__attribute__((used)) static int FUNC5 (long long item_id, int p, int rate) {
  FUNC4 (4, "set_rate_new(%016llx), p = %d, rate = %d\n", item_id, p, rate);

  struct item *I = FUNC2 (item_id, ONLY_FIND);
  struct item *II = (struct item*) FUNC1 (item_id);

  if (II) {
    FUNC3 (II, p, rate);
    FUNC0 (!I);
    return 1;
  }

  if (!I || (I->extra & FLAG_DELETED)) {
    return 0;
  }
  FUNC3 (I, p, rate);
  return 1;
}