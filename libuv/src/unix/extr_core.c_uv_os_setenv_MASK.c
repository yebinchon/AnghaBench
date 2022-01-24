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
 int UV_EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (char const*,char const*,int) ; 

int FUNC2(const char* name, const char* value) {
  if (name == NULL || value == NULL)
    return UV_EINVAL;

  if (FUNC1(name, value, 1) != 0)
    return FUNC0(errno);

  return 0;
}