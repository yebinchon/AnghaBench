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
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (long) ; 

void FUNC4 (void) {
  static char RB[16];
  int rfd = FUNC1 ("/dev/urandom", O_RDONLY);
  FUNC0 (FUNC2 (rfd, RB, 4) == 4);
  FUNC3 (*((long *) RB));
}