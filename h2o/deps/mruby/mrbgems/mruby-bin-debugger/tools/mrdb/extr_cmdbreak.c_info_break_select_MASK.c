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
struct TYPE_3__ {char* command; size_t wcnt; char** words; int /*<<< orphan*/  dbg; } ;
typedef  TYPE_1__ mrdb_state ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_debug_breakpoint ;
typedef  scalar_t__ mrb_bool ;
typedef  size_t int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  BREAK_ERR_MSG_INVALIDBPNO_INFO ; 
 char* BREAK_ERR_MSG_NOBPNO_INFO ; 
 int /*<<< orphan*/  BREAK_INFO_MSG_HEADER ; 
 scalar_t__ FALSE ; 
 size_t MRB_DEBUG_BREAK_INVALID_NO ; 
 size_t MRB_DEBUG_OK ; 
 scalar_t__ TRUE ; 
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(mrb_state *mrb, mrdb_state *mrdb)
{
  int32_t ret = MRB_DEBUG_OK;
  int32_t bpno = 0;
  char* ps = mrdb->command;
  mrb_debug_breakpoint bp;
  mrb_bool isFirst = TRUE;
  int32_t i;

  for(i=2; i<mrdb->wcnt; i++) {
    ps = mrdb->words[i];
    bpno = FUNC1(ps);
    if (bpno == 0) {
      FUNC5(BREAK_ERR_MSG_INVALIDBPNO_INFO);
      break;
    }

    ret = FUNC0(mrb, mrdb->dbg, bpno, &bp);
    if (ret == MRB_DEBUG_BREAK_INVALID_NO) {
      FUNC4(BREAK_ERR_MSG_NOBPNO_INFO, bpno);
      break;
    }
    else if (ret != MRB_DEBUG_OK) {
      FUNC2(ret);
      break;
    }
    else if (isFirst == TRUE) {
      isFirst = FALSE;
      FUNC5(BREAK_INFO_MSG_HEADER);
    }
    FUNC3(&bp);
  }
}