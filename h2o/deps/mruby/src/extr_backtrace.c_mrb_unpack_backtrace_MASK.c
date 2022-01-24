#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct backtrace_location {scalar_t__ method_id; int /*<<< orphan*/  lineno; int /*<<< orphan*/ * filename; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  size_t mrb_int ;
struct TYPE_2__ {scalar_t__ flags; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bt_type ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__) ; 

mrb_value
FUNC14(mrb_state *mrb, mrb_value backtrace)
{
  struct backtrace_location *bt;
  mrb_int n, i;
  int ai;

  if (FUNC9(backtrace)) {
  empty_backtrace:
    return FUNC2(mrb, 0);
  }
  if (FUNC1(backtrace)) return backtrace;
  bt = (struct backtrace_location*)FUNC4(mrb, backtrace, &bt_type);
  if (bt == NULL) goto empty_backtrace;
  n = (mrb_int)FUNC0(backtrace)->flags;
  backtrace = FUNC2(mrb, n);
  ai = FUNC8(mrb);
  for (i = 0; i < n; i++) {
    struct backtrace_location *entry = &bt[i];
    mrb_value btline;

    if (entry->filename == NULL) continue;
    btline = FUNC6(mrb, "%S:%S",
                              FUNC12(mrb, entry->filename),
                              FUNC5(entry->lineno));
    if (entry->method_id != 0) {
      FUNC11(mrb, btline, ":in ");
      FUNC10(mrb, btline, FUNC13(mrb, entry->method_id));
    }
    FUNC3(mrb, backtrace, btline);
    FUNC7(mrb, ai);
  }

  return backtrace;
}