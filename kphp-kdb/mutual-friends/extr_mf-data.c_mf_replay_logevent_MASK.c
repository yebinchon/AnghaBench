#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct lev_start {int dummy; } ;
struct lev_generic {int type; int b; } ;

/* Variables and functions */
#define  LEV_CRC32 137 
#define  LEV_MF_ADD_EXCEPTION 136 
#define  LEV_MF_CLEAR_EXCEPTIONS 135 
#define  LEV_MF_DEL_EXCEPTION 134 
#define  LEV_NOOP 133 
#define  LEV_ROTATE_FROM 132 
#define  LEV_ROTATE_TO 131 
#define  LEV_START 130 
#define  LEV_TAG 129 
#define  LEV_TIMESTAMP 128 
 int MEMORY_CHANGES_PERCENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ _eventsLeft ; 
 int /*<<< orphan*/  add_exception ; 
 int /*<<< orphan*/  clear_exceptions ; 
 int FUNC1 (struct lev_generic*,int) ; 
 int /*<<< orphan*/  del_exception ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 scalar_t__ index_mode ; 
 int /*<<< orphan*/  lev_mf ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int max_memory ; 
 int /*<<< orphan*/  FUNC6 (struct lev_start*) ; 
 int /*<<< orphan*/  newindexname ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC8 (struct lev_generic *E, int size) {
//  fprintf (stderr, "mf_replay_logevent %lld\n", log_cur_pos());
//  fprintf (stderr, "%x\n", E->type);
  if (index_mode) {
    if ((_eventsLeft && --_eventsLeft == 0) || FUNC4() > MEMORY_CHANGES_PERCENT * max_memory) {
      FUNC7 (newindexname);
      FUNC2 (13);
    }
  }

  int s;
  switch (E->type) {
  case LEV_START:
    if (size < 24 || E->b < 0 || E->b > 4096) { return -2; }
    s = 24 + ((E->b + 3) & -4);
    if (size < s) { return -2; }
    return FUNC6 ((struct lev_start *) E) >= 0 ? s : -1;
  case LEV_NOOP:
  case LEV_TIMESTAMP:
  case LEV_CRC32:
  case LEV_ROTATE_FROM:
  case LEV_ROTATE_TO:
  case LEV_TAG:
    return FUNC1 (E, size);
  case LEV_MF_ADD_EXCEPTION:
    FUNC0(lev_mf, add_exception);
  case LEV_MF_DEL_EXCEPTION:
    FUNC0(lev_mf, del_exception);
  case LEV_MF_CLEAR_EXCEPTIONS:
    FUNC0(lev_mf, clear_exceptions);
  }

  FUNC3 (stderr, "unknown log event type %08x at position %d\n", E->type, FUNC5());

  return -1;
}