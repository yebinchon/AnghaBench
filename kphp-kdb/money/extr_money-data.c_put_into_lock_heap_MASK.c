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
struct TYPE_4__ {scalar_t__ long_locked_until; int /*<<< orphan*/  long_lock_heap_pos; } ;
typedef  TYPE_1__ transaction_t ;

/* Variables and functions */
 scalar_t__ LHN ; 
 scalar_t__ LOCK_HEAP_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ locked_long_transactions ; 

__attribute__((used)) static void FUNC2 (transaction_t *T) {
  FUNC0 (!T->long_lock_heap_pos && T->long_locked_until);
  FUNC0 (LHN < LOCK_HEAP_SIZE);
  locked_long_transactions = ++LHN;
  FUNC1 (LHN, T);
}