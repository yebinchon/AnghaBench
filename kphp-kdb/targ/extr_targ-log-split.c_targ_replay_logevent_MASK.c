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
struct lev_generic {int b; void* e; void* d; int /*<<< orphan*/  c; scalar_t__ timestamp; } ;

/* Variables and functions */
 int LEV_START ; 
 int LEV_TARG_STAT_LOAD ; 
 int LEV_TARG_VIEWS ; 
 struct lev_generic LogTs ; 
 int /*<<< orphan*/  copy_mod ; 
 void* copy_rem ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int,struct lev_generic*,int) ; 
 scalar_t__ immediate_exit ; 
 scalar_t__ jump_log_pos ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct lev_generic*,struct lev_generic*,int) ; 
 int rd_bytes ; 
 int /*<<< orphan*/  rd_rec ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  targ_existed ; 
 scalar_t__ targ_orig_size ; 
 scalar_t__ FUNC6 (int,struct lev_generic*) ; 
 scalar_t__ wr_bytes ; 
 int /*<<< orphan*/  wr_rec ; 
 int /*<<< orphan*/  wr_views_rec ; 
 struct lev_generic* FUNC7 (int) ; 

int FUNC8 (struct lev_generic *E, int size) {
  int type, s;
  static int type_ok = -1;

  if (size < 4) {
    return -2;
  }

  type = *((int *)E);
  s = FUNC2 (type, E, size);

  if (s > size || s == -2) {
    return -2;
  }

  if (s < 0) {
    if (s != -13) {
      FUNC1 (stderr, "error %d reading binlog at position %d, write position %ld, type %08x (prev type %08x)\n", s, FUNC3(), wr_bytes + targ_orig_size, type, type_ok);
    }
    return s;
  }

  if (!targ_existed && type != LEV_START && jump_log_pos == 0) {
    FUNC1 (stderr, "error: first record must be a LEV_START\n");
    return -1;
  }

  if (immediate_exit) {
    FUNC1 (stderr, "error: first record in a binlog must be LEV_START\n");
    FUNC0 (1);
  }

  s = ((s + 3) & -4);

  rd_bytes += s;
  rd_rec++;

  type_ok = type;

  if (FUNC6 (type, E)) {
    if (LogTs.timestamp) {
      FUNC4 (FUNC7 (8), &LogTs, 8);
      wr_bytes += 8;
      wr_rec++;
      LogTs.timestamp = 0;
    }
    struct lev_generic *N = FUNC7 (s);
    FUNC4 (N, E, s);
    if (type == LEV_START) {
      N->c = copy_mod;
      N->d = copy_rem;
      N->e = copy_rem+1;
    } else if (type == LEV_TARG_VIEWS) {
      wr_views_rec++;
      N->b = FUNC5 (N->b);
    } else if (type == LEV_TARG_STAT_LOAD) {
      int i, *z = (int *) N;
      for (i = 2; i < 7; i++) {
        z[i] = FUNC5 (z[i]);
      }
    }
    wr_bytes += s;
    wr_rec++;
  }

  return s;
}