#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct TYPE_5__ {int vn; TYPE_1__ tok; int /*<<< orphan*/ * v; scalar_t__ is_const; } ;
typedef  TYPE_2__ node ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  t_var ; 

void FUNC2 (node *v) {
  if (v->is_const) {
    int i;
    for (i = 0; i < v->vn; i++) {
      FUNC0 (v->v[i]);
    }
    FUNC1 (v->v, sizeof (node *) * v->vn);
    v->vn = 0;
    v->v = NULL;
    v->tok.type = t_var;
  }
}