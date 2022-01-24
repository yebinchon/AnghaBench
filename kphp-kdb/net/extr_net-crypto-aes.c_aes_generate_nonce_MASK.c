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
struct timespec {int tv_sec; int tv_nsec; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct timespec*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int,unsigned char*) ; 
 scalar_t__ rand_buf ; 
 long long FUNC4 () ; 

int FUNC5 (char res[16]) {
  *(int *)(rand_buf + 16) = FUNC2 ();
  *(int *)(rand_buf + 20) = FUNC2 ();
  *(long long *)(rand_buf + 24) = FUNC4 ();
  struct timespec T;
  FUNC0 (FUNC1(CLOCK_REALTIME, &T) >= 0);
  *(int *)(rand_buf + 32) = T.tv_sec;
  *(int *)(rand_buf + 36) = T.tv_nsec;
  (*(int *)(rand_buf + 40))++;

  FUNC3 ((unsigned char *)rand_buf, 44, (unsigned char *)res);
  return 0;
}