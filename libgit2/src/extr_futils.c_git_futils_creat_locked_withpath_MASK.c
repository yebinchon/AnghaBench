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
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int FUNC0 (char const*,int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/  const) ; 

int FUNC2(const char *path, const mode_t dirmode, const mode_t mode)
{
	if (FUNC1(path, dirmode) < 0)
		return -1;

	return FUNC0(path, mode);
}