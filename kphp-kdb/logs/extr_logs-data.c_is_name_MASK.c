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
 scalar_t__ MAX_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 scalar_t__ FUNC2 (char*) ; 

int FUNC3 (char *s) {
  if (s == NULL || *s == 0 || FUNC2 (s) >= MAX_NAME_LEN || !FUNC1 (*s)) {
    return 0;
  }
  s++;
  while (*s) {
    if (!FUNC1 (*s) && !FUNC0 (*s)) {
      return 0;
    }
    s++;
  }
  return 1;
}