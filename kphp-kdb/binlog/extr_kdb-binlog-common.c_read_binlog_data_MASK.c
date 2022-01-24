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
struct TYPE_2__ {scalar_t__ log_last_endw; scalar_t__ log_wptr; int log_start; } ;

/* Variables and functions */
 TYPE_1__ W ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 

int FUNC2 (char *buf, int len) {
  int xlen = W.log_last_endw <= W.log_wptr ? W.log_wptr - W.log_start : W.log_wptr - W.log_start + W.log_last_endw - W.log_wptr;
  if (xlen > len) {
    xlen = len;
  }
  len = xlen;
  if (W.log_wptr - W.log_start >= len) {
    FUNC1 (buf, W.log_wptr - len, len);
    return xlen;
  } else {
    len -= W.log_wptr - W.log_start;
    FUNC1 (buf + len, W.log_start, W.log_wptr - W.log_start);
  }
  if (W.log_last_endw) {
    if (W.log_last_endw > W.log_wptr) {
      if (W.log_last_endw - W.log_wptr >= len) {
        FUNC1 (buf, W.log_last_endw - len, len);
        return xlen;
      } else {
        len -= W.log_last_endw - W.log_wptr;
        FUNC1 (buf, W.log_wptr, W.log_last_endw - W.log_wptr);
      }
    }
  }
  FUNC0 (!len);
  return xlen;
}