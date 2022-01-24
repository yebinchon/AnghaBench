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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,scalar_t__,int,int) ; 
 int FUNC1 (int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int rd_bytes ; 
 int /*<<< orphan*/  rd_rec ; 
 scalar_t__ rend ; 
 scalar_t__ rptr ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ targ_orig_size ; 
 scalar_t__ FUNC4 (int,scalar_t__) ; 
 scalar_t__ wr_bytes ; 
 int /*<<< orphan*/  wr_rec ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int FUNC6 (void) {
  int size, type, s;
  static int type_ok = -1;

  FUNC3();
  if (rptr == rend) {
    return -1;
  }
  size = rend - rptr;
  if (size < 4) {
    return -2;
  }

  type = *((int *) rptr);
  s = FUNC1 (type, rptr, size);

  if (s > size) {
    s = -2;
  }

  if (s < 0) {
    FUNC0 (stderr, "error %d reading binlog at position %d, write position %ld, type %08x (prev type %08x)\n", s, rd_bytes, wr_bytes + targ_orig_size, type, type_ok);
    return s;
  }

  type_ok = type;

  s = ((s + 3) & -4);

  if (FUNC4 (type, rptr)) {
    FUNC2 (FUNC5 (s), rptr, s);
    wr_bytes += s;
    wr_rec++;
  }

  rd_bytes += s;
  rd_rec++;
  rptr += s;

  return 0;
}