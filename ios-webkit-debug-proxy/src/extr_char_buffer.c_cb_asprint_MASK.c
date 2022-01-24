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
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int FUNC0 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (size_t) ; 

int FUNC2(char **ret, const char *buf, ssize_t length,
    ssize_t max_width, ssize_t max_lines) {
  size_t n = FUNC0(NULL, buf, length, max_width, max_lines);
  *ret = (char *)FUNC1((n+1) * sizeof(char));
  if (!*ret) {
    return -1;
  }
  return FUNC0(*ret, buf, length, max_width, max_lines);
}