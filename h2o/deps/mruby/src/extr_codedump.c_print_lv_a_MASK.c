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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_4__ {scalar_t__ nlocals; int /*<<< orphan*/  lv; } ;
typedef  TYPE_1__ mrb_irep ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(mrb_state *mrb, mrb_irep *irep, uint16_t a)
{
  if (!irep->lv || a >= irep->nlocals || a == 0) {
    FUNC1("\n");
    return;
  }
  FUNC1("\t;");
  FUNC0(mrb, irep, a);
  FUNC1("\n");
}