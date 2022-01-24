#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int extra; } ;
typedef  TYPE_1__ item_t ;

/* Variables and functions */
 int FLAG_DELETED ; 
 int /*<<< orphan*/  ONLY_FIND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (long long) ; 
 TYPE_1__* FUNC2 (long long,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int,int) ; 

__attribute__((used)) static int FUNC4 (long long item_id, int p, int rate_incr) {
  item_t *I = FUNC2 (item_id, ONLY_FIND);
  item_t *II = (item_t *) FUNC1 (item_id);
  if (II) {
    FUNC0 (!I);
    return FUNC3 (II, p, rate_incr);
  }
  if (!I || (I->extra & FLAG_DELETED)) {
    return 0;
  }
  return FUNC3 (I, p, rate_incr);
}