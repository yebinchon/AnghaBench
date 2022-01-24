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
struct TYPE_4__ {scalar_t__ refcnt; } ;
typedef  TYPE_1__ time_amortization_table_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  tot_amortization_tables ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

void FUNC2 (time_amortization_table_t **p) {
  if (p == NULL) {
    return;
  }
  if (*p == NULL) {
    return;
  }
  (*p)->refcnt--;
  FUNC0 ((*p)->refcnt >= 0);
  if (!(*p)->refcnt) {
    FUNC1 (*p, sizeof (time_amortization_table_t));
    tot_amortization_tables--;
  }
  *p = NULL;
}