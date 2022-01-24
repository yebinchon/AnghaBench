#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint16_t ;
struct mrb_insn_data {scalar_t__ insn; scalar_t__ a; scalar_t__ b; } ;
typedef  int /*<<< orphan*/  mrb_code ;
struct TYPE_7__ {scalar_t__ pc; scalar_t__ lastpc; } ;
typedef  TYPE_1__ codegen_scope ;

/* Variables and functions */
 int /*<<< orphan*/  OP_EXT1 ; 
 scalar_t__ OP_MOVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 struct mrb_insn_data FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static uint16_t
FUNC4(codegen_scope *s, mrb_code i, uint16_t a, int pc, int val)
{
  uint16_t pos;

  if (!FUNC3(s) && !val) {
    struct mrb_insn_data data = FUNC2(s);

    if (data.insn == OP_MOVE && data.a == a) {
      s->pc = s->lastpc;
      a = data.b;
    }
  }

  s->lastpc = s->pc;
  if (a > 0xff) {
    FUNC0(s, OP_EXT1);
    FUNC0(s, i);
    FUNC1(s, a);
    pos = s->pc;
    FUNC1(s, pc);
  }
  else {
    FUNC0(s, i);
    FUNC0(s, (uint8_t)a);
    pos = s->pc;
    FUNC1(s, pc);
  }
  return pos;
}