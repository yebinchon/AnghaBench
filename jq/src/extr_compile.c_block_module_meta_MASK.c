#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jv ;
struct TYPE_7__ {TYPE_2__* first; } ;
typedef  TYPE_3__ block ;
struct TYPE_5__ {int /*<<< orphan*/  constant; } ;
struct TYPE_6__ {scalar_t__ op; TYPE_1__ imm; } ;

/* Variables and functions */
 scalar_t__ MODULEMETA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

jv FUNC2(block b) {
  if (b.first != NULL && b.first->op == MODULEMETA)
    return FUNC0(b.first->imm.constant);
  return FUNC1();
}