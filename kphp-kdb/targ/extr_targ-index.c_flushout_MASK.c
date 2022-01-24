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
 scalar_t__ Buff ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  crc32_acc ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int metafile_pos ; 
 int /*<<< orphan*/  newidx_fd ; 
 scalar_t__ rptr ; 
 scalar_t__ wptr ; 
 scalar_t__ wptr0 ; 
 scalar_t__ wptr_crc ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int write_pos ; 

void FUNC3 (void) {
  int w, s;
  if (wptr > wptr0) {
    s = wptr - wptr0;
    write_pos += s;
    metafile_pos += s;
  }
  if (rptr < wptr) {
    s = wptr - rptr;
    w = FUNC2 (newidx_fd, rptr, s);
    FUNC0 (w == s);
    FUNC0 (rptr <= wptr_crc && wptr_crc <= wptr);
    crc32_acc = FUNC1 (wptr_crc, wptr - wptr_crc, crc32_acc);
  }
  rptr = wptr = wptr0 = wptr_crc = Buff;
}