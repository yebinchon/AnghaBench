#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  opcode ;
struct TYPE_8__ {TYPE_1__* first; } ;
typedef  TYPE_2__ block ;
struct TYPE_7__ {scalar_t__ any_unbound; struct TYPE_7__* bound_by; int /*<<< orphan*/  symbol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__) ; 
 TYPE_2__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

block FUNC3(opcode op, block binder) {
  FUNC0(FUNC1(binder));
  block b = FUNC2(op, binder.first->symbol);
  b.first->bound_by = binder.first;
  b.first->any_unbound = 0;
  return b;
}