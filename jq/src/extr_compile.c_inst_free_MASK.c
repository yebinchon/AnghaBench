#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  constant; } ;
struct inst {TYPE_1__ imm; int /*<<< orphan*/  op; scalar_t__ locfile; int /*<<< orphan*/  arglist; int /*<<< orphan*/  subfn; struct inst* symbol; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int OP_HAS_CONSTANT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inst*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct inst* i) {
  FUNC2(i->symbol);
  FUNC0(i->subfn);
  FUNC0(i->arglist);
  if (i->locfile)
    FUNC3(i->locfile);
  if (FUNC4(i->op)->flags & OP_HAS_CONSTANT) {
    FUNC1(i->imm.constant);
  }
  FUNC2(i);
}