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
struct sigaction {int /*<<< orphan*/  sa_handler; } ;
typedef  int /*<<< orphan*/  sa ;

/* Variables and functions */
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int,struct sigaction*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(int signum) {
  /* When this function is called, the signal lock must be held. */
  struct sigaction sa;

  FUNC1(&sa, 0, sizeof(sa));
  sa.sa_handler = SIG_DFL;

  /* sigaction can only fail with EINVAL or EFAULT; an attempt to deregister a
   * signal implies that it was successfully registered earlier, so EINVAL
   * should never happen.
   */
  if (FUNC2(signum, &sa, NULL))
    FUNC0();
}