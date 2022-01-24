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
struct index_item {scalar_t__ item_id; scalar_t__ mask; scalar_t__ rates_len; scalar_t__ extra; scalar_t__* rates; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 scalar_t__* FUNC4 (int) ; 

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
  return sz + 12;
}