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
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int) ; 
 int FUNC2 (int,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 

int FUNC4 (void *buf, int n) {
  int r = 0, h = FUNC1 ("/dev/random", O_RDONLY | O_NONBLOCK);
  if (h >= 0) {
    r = FUNC2 (h, buf, n);
    if (r > 0) {
      FUNC3 (3, "added %d bytes of real entropy to the security key\n", r);
    }
    FUNC0 (h);
  }

  if (r < n) {
    h = FUNC1 ("/dev/urandom", O_RDONLY);
    if (h < 0) {
      return r;
    }
    int s = FUNC2 (h, buf + r, n - r);
    FUNC0 (h);
    if (s < 0) {
      return r;
    }
    r += s;
  }
  return r;
}