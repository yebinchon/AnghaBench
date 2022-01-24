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
struct pending_operation {struct pending_operation* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pending_operation*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  po_mrk ; 
 scalar_t__ po_use_mark ; 
 struct pending_operation* pol_head ; 
 int /*<<< orphan*/ * pol_tail ; 

void FUNC3 (void) {
  struct pending_operation *P;
  for (P = pol_head; P != NULL; P = P->next) {
    FUNC1 (P);
  }
  if (po_use_mark) {
    FUNC0 (po_mrk);
  } else {
    FUNC2 ();
  }
  pol_head = pol_tail = NULL;
}