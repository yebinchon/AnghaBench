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
struct TYPE_3__ {scalar_t__* iseq; } ;
typedef  TYPE_1__ mrb_irep ;
typedef  scalar_t__ mrb_code ;
typedef  int /*<<< orphan*/  mrb_aspec ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ OP_ENTER ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 

__attribute__((used)) static int
FUNC5(mrb_irep *irep)
{
  mrb_code c;

  c = irep->iseq[0];
  if (c == OP_ENTER) {
    mrb_aspec ax = FUNC4(irep->iseq+1);
    /* extra 1 means a slot for block */
    return FUNC2(ax)+FUNC0(ax)+FUNC3(ax)+FUNC1(ax)+1;
  }
  return 0;
}