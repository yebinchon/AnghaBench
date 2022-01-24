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
 int /*<<< orphan*/  FUNC0 (int) ; 
 long long FUNC1 (char) ; 

long long FUNC2 (char *s) {
  long long id = 0, mul = 1;
  FUNC0 (s[0] == 'w');
  FUNC0 (s[1] == '_');
  s += 2;
  while (*s) {
    id += FUNC1 (*s) * mul;
    mul *= 62;
    s++;
  }

  return id;
}