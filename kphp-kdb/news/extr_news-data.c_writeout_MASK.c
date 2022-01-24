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
 scalar_t__ BUFFSIZE ; 
 scalar_t__ buff ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,void*,int) ; 
 scalar_t__ wptr ; 

void FUNC2 (void *x, int len) {
  while (len > 0) {
    if (wptr + len <= buff + BUFFSIZE) {
      FUNC1 (wptr, x, len);
      wptr += len;
      return;
    }
    int a = buff + BUFFSIZE - wptr;
    FUNC1 (wptr, x, a);
    wptr += a;
    x = (char *)x + a;
    len -= a;
    FUNC0 ();
  }
}