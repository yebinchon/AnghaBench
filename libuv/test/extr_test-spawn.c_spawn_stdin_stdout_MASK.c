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
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EINTR ; 
 scalar_t__ errno ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int,char*,size_t) ; 

void FUNC3(void) {
  char buf[1024];
  char* pbuf;
  for (;;) {
    ssize_t r, w, c;
    do {
      r = FUNC1(0, buf, sizeof buf);
    } while (r == -1 && errno == EINTR);
    if (r == 0) {
      return;
    }
    FUNC0(r > 0);
    c = r;
    pbuf = buf;
    while (c) {
      do {
        w = FUNC2(1, pbuf, (size_t)c);
      } while (w == -1 && errno == EINTR);
      FUNC0(w >= 0);
      pbuf = pbuf + w;
      c = c - w;
    }
  }
}