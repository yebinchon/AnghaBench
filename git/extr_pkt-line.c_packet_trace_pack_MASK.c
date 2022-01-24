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
 int /*<<< orphan*/  trace_pack ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,unsigned int) ; 

__attribute__((used)) static int FUNC1(const char *buf, unsigned int len, int sideband)
{
	if (!sideband) {
		FUNC0(&trace_pack, buf, len);
		return 1;
	} else if (len && *buf == '\1') {
		FUNC0(&trace_pack, buf + 1, len - 1);
		return 1;
	} else {
		/* it's another non-pack sideband */
		return 0;
	}
}