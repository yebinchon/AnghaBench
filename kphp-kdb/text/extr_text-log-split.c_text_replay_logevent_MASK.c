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
struct lev_generic {void* e; void* d; int /*<<< orphan*/  c; scalar_t__ timestamp; } ;
struct lev_add_message {int dummy; } ;

/* Variables and functions */
 int LEV_START ; 
 struct lev_generic LogTs ; 
 scalar_t__ Map ; 
 int /*<<< orphan*/  conv_rec ; 
 int /*<<< orphan*/  copy_mod ; 
 void* copy_rem ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int,struct lev_generic*,int) ; 
 scalar_t__ jump_log_pos ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct lev_generic*,struct lev_generic*,int) ; 
 int rd_bytes ; 
 int /*<<< orphan*/  rd_rec ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  targ_existed ; 
 scalar_t__ targ_orig_size ; 
 scalar_t__ text_len ; 
 scalar_t__ FUNC4 (int,struct lev_generic*) ; 
 scalar_t__ wr_bytes ; 
 int /*<<< orphan*/  wr_rec ; 
 struct lev_generic* FUNC5 (int) ; 
 int FUNC6 (struct lev_add_message*,int,scalar_t__) ; 

int FUNC7 (struct lev_generic *E, int size) {
  int type, s, t, xs;
  static int type_ok = -1;

  if (size < 4) {
    return -2;
  }

  type = *((int *)E);
  s = FUNC1 (type, E, size);

  if (s > size || s == -2) {
    return -2;
  }

  if (s < 0) {
    FUNC0 (stderr, "error %d reading binlog at position %d, write position %ld, type %08x (prev type %08x)\n", s, FUNC2(), wr_bytes + targ_orig_size, type, type_ok);
    return s;
  }

  if (!targ_existed && type != LEV_START && jump_log_pos == 0) {
    FUNC0 (stderr, "error: first record must be a LEV_START\n");
    return -1;
  }

  xs = ((s + 3) & -4);

  rd_bytes += xs;
  rd_rec++;

  type_ok = type;

  if (FUNC4 (type, E)) {
    if (LogTs.timestamp) {
      FUNC3 (FUNC5 (8), &LogTs, 8);
      wr_bytes += 8;
      wr_rec++;
      LogTs.timestamp = 0;
    }
    if (text_len >= 0 && Map && (t = FUNC6 ((struct lev_add_message *) E, s, text_len))) {
      wr_bytes += (t + 3) & -4;
      wr_rec++;
      conv_rec++;
      return s;
    }
    struct lev_generic *N = FUNC5 (s);
    FUNC3 (N, E, s);
    if (type == LEV_START) {
      N->c = copy_mod;
      N->d = copy_rem;
      N->e = copy_rem+1;
    }
    wr_bytes += xs;
    wr_rec++;
  }

  return s;
}