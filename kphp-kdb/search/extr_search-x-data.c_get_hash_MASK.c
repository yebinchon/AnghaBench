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
 long long FUNC1 (struct item*) ; 
 scalar_t__ FUNC2 (long long) ; 
 struct item* FUNC3 (long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,long long,struct item*,struct item*) ; 

int FUNC5 (long long *hash, long long item_id) {
  struct item *I = FUNC3 (item_id, ONLY_FIND);
  struct item *II = (struct item*) FUNC2 (item_id);

  FUNC4 (2, "get_hash(%016llx): %p %p\n", item_id, I, II);

  if (II) {
    FUNC0 (!I);
    *hash = FUNC1 (II);
    return 1;
  }

  if (!I || (I->extra & FLAG_DELETED)) {
    return 0;
  }
  *hash = FUNC1 (I);
  return 1;
}