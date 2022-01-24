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
 scalar_t__ FUNC0 (char*,char*,long long) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static char *FUNC2 (char *wptr, int block_size, int timeout, long long tsize) {
  if (block_size > 0) {
    FUNC1 (wptr, "blksize");
    wptr += 8;
    wptr += FUNC0 (wptr, "%d", block_size) + 1;
  }
  if (timeout > 0) {
    FUNC1 (wptr, "timeout");
    wptr += 8;
    wptr += FUNC0 (wptr, "%d", timeout) + 1;
  }
  if (tsize >= 0) {
    FUNC1 (wptr, "tsize");
    wptr += 6;
    wptr += FUNC0 (wptr, "%lld", tsize) + 1;
  }
  return wptr;
}