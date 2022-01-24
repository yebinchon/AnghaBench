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
 char* FUNC0 () ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const char *var, const char *value, void *data)
{
	static int nr;

	if (nr++)
		FUNC4('\n');

	FUNC3("key=%s\n", var);
	FUNC3("value=%s\n", value ? value : "(null)");
	FUNC3("origin=%s\n", FUNC1());
	FUNC3("name=%s\n", FUNC0());
	FUNC3("scope=%s\n", FUNC5(FUNC2()));

	return 0;
}