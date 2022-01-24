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
 scalar_t__ IO_BUFFSIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  idx_fd ; 
 scalar_t__ io_buff ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ rptr ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ wptr ; 

__attribute__((used)) static void *FUNC4 (size_t len) {
  FUNC0 (len >= 0);
  if (rptr + len <= wptr) {
    return rptr;
  }
  if (wptr < io_buff + IO_BUFFSIZE) {
    return 0;
  }
  FUNC2 (io_buff, rptr, wptr - rptr);
  wptr -= rptr - io_buff;
  rptr = io_buff;
  int r = FUNC3 (idx_fd, wptr, io_buff + IO_BUFFSIZE - wptr);
  if (r < 0) {
    FUNC1 (stderr, "error reading file: %m\n");
  } else {
    wptr += r;
  }
  if (rptr + len <= wptr) {
    return rptr;
  } else {
    return 0;
  }
}