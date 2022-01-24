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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int (*) (int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  error ; 
 int /*<<< orphan*/ * fail ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(FILE *f) {
  FUNC0(ferror);
  int res = FUNC1(f);
  if (fail == f) {
    errno = error;
    return 1;
  }
  return res;
}