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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 char* FUNC2 (char const*) ; 

int FUNC3(char **old_value, const char *new_value) {
  if (*old_value) {
    if (new_value && !FUNC1(*old_value, new_value)) {
      return 0;
    }
    FUNC0(*old_value);
    *old_value = NULL;
  }
  if (new_value) {
    *old_value = FUNC2(new_value);
    if (!*old_value) {
      return -1;
    }
  }
  return 0;
}