#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  constant; } ;
struct TYPE_13__ {scalar_t__ op; TYPE_1__ imm; } ;
typedef  TYPE_2__ inst ;
struct TYPE_14__ {TYPE_2__* first; } ;
typedef  TYPE_3__ block ;

/* Variables and functions */
 scalar_t__ DEPS ; 
 scalar_t__ JV_KIND_OBJECT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__) ; 
 scalar_t__ FUNC2 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__) ; 
 scalar_t__ FUNC4 (TYPE_3__) ; 
 scalar_t__ FUNC5 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

block FUNC7(block import, block metadata) {
  FUNC0(FUNC5(import) && import.first->op == DEPS);
  FUNC0(FUNC4(metadata) && FUNC2(metadata) == JV_KIND_OBJECT);
  inst *i = import.first;
  i->imm.constant = FUNC6(FUNC1(metadata), i->imm.constant);
  FUNC3(metadata);
  return import;
}