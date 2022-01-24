#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  mrb_code ;
struct TYPE_5__ {int /*<<< orphan*/  pc; int /*<<< orphan*/  lastpc; } ;
typedef  TYPE_1__ codegen_scope ;

/* Variables and functions */
 int /*<<< orphan*/  OP_EXT1 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC2(codegen_scope *s, mrb_code i, uint16_t a)
{
  s->lastpc = s->pc;
  if (a > 0xff) {
    FUNC0(s, OP_EXT1);
    FUNC0(s, i);
    FUNC1(s, a);
  }
  else {
    FUNC0(s, i);
    FUNC0(s, (uint8_t)a);
  }
}