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
struct index_item {int item_id; int mask; int rates_len; int extra; int* rates; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  idx_items_with_hash ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int* FUNC4 (int) ; 

int FUNC5 (struct index_item *C) {
  FUNC3 (5, "loading item...");
  FUNC1 (&C->item_id, 8);
  /* read mask, rates_len, extra */
  FUNC1 (&C->mask, 2);
  FUNC1 (&C->rates_len, 1);
  FUNC1 (&C->extra, 1);
  int sz = ((int) C->rates_len) * sizeof (int);
  C->rates = FUNC4 (sz);
  FUNC1 (C->rates, sz);
  FUNC0 (FUNC2 (C->mask) == C->rates_len);
  if (C->mask & 0xc000) {
    idx_items_with_hash++;
  }
  return sz + 12;
}