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
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIG_UNBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int const) ; 
 int FUNC2 (int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC5 (const int sig) {
  sigset_t mask;
  FUNC3 (&mask);
  int err = FUNC2 (&mask, sig);
  if (err < 0) {
    return -1;
  }
  err = FUNC4 (SIG_UNBLOCK, &mask, NULL);
  FUNC0 (err != -1, FUNC1 ("failed to allow signal %d", sig));

  return 0;
}