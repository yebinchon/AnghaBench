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
struct TYPE_5__ {int /*<<< orphan*/  constant; } ;
struct TYPE_6__ {TYPE_1__ imm; } ;
typedef  TYPE_2__ inst ;
typedef  int /*<<< orphan*/  block ;

/* Variables and functions */
 scalar_t__ JV_KIND_OBJECT ; 
 int /*<<< orphan*/  MODULEMETA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

block FUNC8(block metadata) {
  inst* i = FUNC3(MODULEMETA);
  i->imm.constant = FUNC0(metadata);
  if (FUNC4(i->imm.constant) != JV_KIND_OBJECT)
    i->imm.constant = FUNC6(FUNC5(), FUNC7("metadata"), i->imm.constant);
  FUNC1(metadata);
  return FUNC2(i);
}