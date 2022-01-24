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
 scalar_t__ buff ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,long) ; 
 int /*<<< orphan*/  newidx_fd ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 
 scalar_t__ wptr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

void FUNC3 (void) {
  FUNC2 (newidx_fd, buff, wptr - buff);
  if (verbosity > 0) {
    FUNC1 (stderr, "written %ld bytes\n", (long)(wptr - buff));
  }
  FUNC0 ();
}