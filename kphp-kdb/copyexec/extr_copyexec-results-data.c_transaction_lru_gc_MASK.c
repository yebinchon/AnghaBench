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
typedef  int /*<<< orphan*/  transaction_t ;
struct TYPE_2__ {int /*<<< orphan*/ * prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__ lru_list ; 
 scalar_t__ lru_size ; 
 scalar_t__ max_lru_size ; 
 scalar_t__ tot_memory_transactions ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2 (void) {
  FUNC0 (lru_size == tot_memory_transactions);
  while (lru_size >= max_lru_size) {
    transaction_t *T = lru_list.prev;
    FUNC0 (*T);
    FUNC1 (T);
  }
}