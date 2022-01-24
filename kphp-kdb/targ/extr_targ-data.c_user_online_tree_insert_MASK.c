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
struct TYPE_4__ {int /*<<< orphan*/  last_visited; } ;
typedef  TYPE_1__ user_t ;
typedef  int /*<<< orphan*/  olist_t ;

/* Variables and functions */
 int /*<<< orphan*/ * OHead ; 
 int OLIST_COUNT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ocntT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4 (user_t *U) {
  if (FUNC0 (U->last_visited)) {
    int p = FUNC1 (U->last_visited);
    FUNC2 ((olist_t *)&OHead[p], FUNC3 (U));
    ocntT[p + OLIST_COUNT]++;
  }
}