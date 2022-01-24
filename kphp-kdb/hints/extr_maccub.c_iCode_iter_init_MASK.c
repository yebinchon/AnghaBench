#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int val; int* l; scalar_t__ top; scalar_t__* st; scalar_t__* n; scalar_t__* r; scalar_t__ pred; int /*<<< orphan*/ * ptr; } ;
typedef  TYPE_1__ iCode_iterator ;
typedef  int /*<<< orphan*/ * iCode ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2 (iCode_iterator *it, iCode x, int tot_items, int len, int r) {
  it->ptr = x;

  if (x == NULL) {
    it->val = 0;
    return;
  }

  it->pred = 0;
  it->l[0] = tot_items;
  it->r[0] = 0;
  it->n[0] = FUNC0 (it, tot_items) + 1;
  it->st[0] = 0;
  it->top = 0;

  FUNC1 (it);

  while (it->val > r) {
    FUNC1 (it);
  }
}