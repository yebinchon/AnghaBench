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
 int EINVAL ; 
 int FUNC0 (int,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

int FUNC2(int how, const sigset_t* set, sigset_t* oset) {
  static int workaround;
  int err;

  if (workaround) {
    return FUNC1(how, set, oset);
  } else {
    err = FUNC0(how, set, oset);
    if (err) {
      if (err == EINVAL && FUNC1(how, set, oset) == 0) {
        workaround = 1;
        return 0;
      } else {
        return -1;
      }
    }
  }

  return 0;
}