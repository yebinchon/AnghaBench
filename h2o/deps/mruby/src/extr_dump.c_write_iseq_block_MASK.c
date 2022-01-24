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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int ptrdiff_t ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_3__ {int ilen; int /*<<< orphan*/  iseq; } ;
typedef  TYPE_1__ mrb_irep ;
typedef  int /*<<< orphan*/  mrb_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ptrdiff_t
FUNC3(mrb_state *mrb, mrb_irep *irep, uint8_t *buf, uint8_t flags)
{
  uint8_t *cur = buf;

  cur += FUNC1(irep->ilen, cur); /* number of opcode */
  cur += FUNC2(cur);
  FUNC0(cur, irep->iseq, irep->ilen * sizeof(mrb_code));
  cur += irep->ilen * sizeof(mrb_code);

  return cur - buf;
}