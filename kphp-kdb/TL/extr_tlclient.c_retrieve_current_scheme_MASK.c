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
 int /*<<< orphan*/ * FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/ * scheme_filename ; 
 scalar_t__ FUNC2 (char*) ; 

int FUNC3 (char *s) {
  scheme_filename = FUNC0 (s, "w");
  if (scheme_filename == NULL) {
    FUNC1 ("Couln't open \"%s\" for writing. %m\n", s);
    return -1;
  }

  if (FUNC2 ("(help.getScheme 1)") < 0) {
    return -1;
  }
  return 0;
}