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
typedef  TYPE_1__* trp_node_ptr ;
struct TYPE_3__ {int x; struct TYPE_3__* r; struct TYPE_3__* l; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC1 (trp_node_ptr v) {
  if (v == NULL) {
    return;
  }
  FUNC1 (v->l);
  FUNC0 (stderr, "%+d ", v->x / 2 * (v->x & 1 ? +1 : -1));
  FUNC1 (v->r);
}