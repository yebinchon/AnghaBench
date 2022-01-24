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
struct connection {int /*<<< orphan*/  Out; int /*<<< orphan*/  In; int /*<<< orphan*/ * Tmp; TYPE_1__* gather; } ;
struct TYPE_2__ {struct connection* c; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2 (struct connection *c) {
  if (c->gather && c->gather->c == c) {
    FUNC1 (c->gather);
  }
  c->gather = 0;
  if (c->Tmp) {
    FUNC0 (c->Tmp);
    c->Tmp = 0;
  }
  FUNC0 (&c->In);
  FUNC0 (&c->Out);
}