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
struct TYPE_4__ {scalar_t__ type; int /*<<< orphan*/  param_set; } ;
typedef  TYPE_1__ token ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 scalar_t__ end_token ; 
 scalar_t__ op_in ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2 (token *v) {
  if (v == NULL) {
    return;
  }

  token *t = v;
  while (t->type != end_token) {
    if (t->type == op_in) {
      FUNC1 (&t->param_set);
    }

    t++;
  }

  FUNC0 (v, (t - v + 1) * sizeof (token));
}