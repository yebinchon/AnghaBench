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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ save_and_exit ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  silent ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(const char *fmt, va_list ap)
{
	char buf[PATH_MAX+1];

	FUNC2(buf, sizeof(buf), fmt, ap);
	if (save_and_exit) {
		if (!silent)
			FUNC0("%s", buf);
	} else {
		FUNC1(NULL, buf, 6, 60);
	}
}