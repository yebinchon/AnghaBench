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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  dbg; } ;
typedef  TYPE_1__ mrdb_state ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_debug_breakpoint ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  BREAK_ERR_MSG_NOBPNO_INFOALL ; 
 int /*<<< orphan*/  BREAK_INFO_MSG_HEADER ; 
 int MRB_DEBUG_OK ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(mrb_state *mrb, mrdb_state *mrdb)
{
  int32_t bpnum = 0;
  int32_t i = 0;
  int32_t ret = MRB_DEBUG_OK;
  mrb_debug_breakpoint *bp_list;

  bpnum = FUNC1(mrb, mrdb->dbg);
  if (bpnum < 0) {
    FUNC4(bpnum);
    return;
  }
  else if (bpnum == 0) {
    FUNC6(BREAK_ERR_MSG_NOBPNO_INFOALL);
    return;
  }
  bp_list = (mrb_debug_breakpoint*)FUNC3(mrb, bpnum * sizeof(mrb_debug_breakpoint));

  ret = FUNC0(mrb, mrdb->dbg, (uint32_t)bpnum, bp_list);
  if (ret < 0) {
    FUNC4(ret);
    return;
  }
  FUNC6(BREAK_INFO_MSG_HEADER);
  for(i = 0 ; i < bpnum ; i++) {
    FUNC5(&bp_list[i]);
  }

  FUNC2(mrb, bp_list);
}