#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  opcode ;
struct TYPE_5__ {int any_unbound; int /*<<< orphan*/  symbol; } ;
typedef  TYPE_1__ inst ;
typedef  int /*<<< orphan*/  block ;
struct TYPE_6__ {int flags; } ;

/* Variables and functions */
 int OP_HAS_BINDING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

block FUNC5(opcode op, const char* name) {
  FUNC0(FUNC3(op)->flags & OP_HAS_BINDING);
  inst* i = FUNC2(op);
  i->symbol = FUNC4(name);
  i->any_unbound = 1;
  return FUNC1(i);
}