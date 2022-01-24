#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  item_id; } ;
typedef  TYPE_1__ item_t ;

/* Variables and functions */
 long long INT_MAX ; 
 long long INT_MIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int order ; 

__attribute__((used)) static int FUNC1 (item_t *I, int priority) {
  long long rr = ((order == 1) ? (5 - priority) : (priority - 5)) * 200000000;
  rr += FUNC0 (I->item_id);
  if (rr < INT_MIN) { return INT_MIN; }
  if (rr > INT_MAX) { return INT_MAX; }
  return rr;
}