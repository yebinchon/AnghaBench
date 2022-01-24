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
struct TYPE_3__ {size_t n; int /*<<< orphan*/ * it; int /*<<< orphan*/  r; int /*<<< orphan*/  l; } ;
typedef  TYPE_1__ uni_iterator ;
typedef  int /*<<< orphan*/ * changes ;
typedef  int /*<<< orphan*/ * LIST ;

/* Variables and functions */
 size_t MAX_WORDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2 (uni_iterator *v, LIST a, changes b, int tot_items, int len) {
  if ((a != NULL || b != NULL) && v->n < MAX_WORDS) {
    FUNC0 (&v->it[v->n], a, b, tot_items, len, v->l, v->r);
    FUNC1 (&v->it[v->n++]);
  }
}