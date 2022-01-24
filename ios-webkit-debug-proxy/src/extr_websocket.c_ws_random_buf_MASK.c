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
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(char *buf, size_t len) {
#ifdef __MACH__
  arc4random_buf(buf, len);
#else
  static bool seeded = false;
  if (!seeded) {
    seeded = true;
    // could fread from /dev/random
    FUNC2(FUNC3(NULL));
  }
  size_t i;
  for (i = 0; i < len; i++) {
    buf[i] = (char)FUNC1();
  }
#endif
}