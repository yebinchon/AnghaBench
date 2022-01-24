#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  opcode ;
struct TYPE_7__ {TYPE_1__* first; } ;
typedef  TYPE_2__ block ;
struct TYPE_8__ {int flags; } ;
struct TYPE_6__ {struct TYPE_6__* bound_by; } ;

/* Variables and functions */
 int OP_HAS_VARIABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__ FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 

block FUNC3(opcode op, const char* name) {
  FUNC0(FUNC2(op)->flags & OP_HAS_VARIABLE);
  block b = FUNC1(op, name);
  b.first->bound_by = b.first;
  return b;
}