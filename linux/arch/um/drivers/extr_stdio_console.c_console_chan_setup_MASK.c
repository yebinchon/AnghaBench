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
 int /*<<< orphan*/  MAX_TTYS ; 
 int /*<<< orphan*/  def_conf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  vt_conf ; 

__attribute__((used)) static int FUNC2(char *str)
{
	if (!FUNC1(str, "sole=", 5))	/* console= option specifies tty */
		return 0;

	FUNC0(vt_conf, MAX_TTYS, &def_conf, str, "console");
	return 1;
}