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
typedef  size_t uint8_t ;
struct TYPE_3__ {int wcnt; int print_no; int /*<<< orphan*/  dbg; int /*<<< orphan*/ * words; } ;
typedef  TYPE_1__ mrdb_state ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  dbgcmd_state ;

/* Variables and functions */
 int /*<<< orphan*/  DBGST_PROMPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

dbgcmd_state
FUNC10(mrb_state *mrb, mrdb_state *mrdb)
{
  mrb_value expr;
  mrb_value result;
  mrb_value s;
  uint8_t wcnt;
  int ai;

  if (mrdb->wcnt <= 1) {
    FUNC9("Parameter not specified.");
    return DBGST_PROMPT;
  }

  ai = FUNC4(mrb);

  /* eval expr */
  expr = FUNC7(mrb, NULL);
  for (wcnt=1; wcnt<mrdb->wcnt; wcnt++) {
    expr = FUNC6(mrb, expr, " ");
    expr = FUNC5(mrb, expr, mrdb->words[wcnt]);
  }

  result = FUNC2(mrb, mrdb->dbg, FUNC1(expr), FUNC0(expr), NULL);

  /* $print_no = result */
  s = FUNC6(mrb, result, "\0");
  FUNC8("$%lu = %s\n", (unsigned long)mrdb->print_no++, FUNC1(s));

  if (mrdb->print_no == 0) {
    mrdb->print_no = 1;
  }

  FUNC3(mrb, ai);

  return DBGST_PROMPT;
}