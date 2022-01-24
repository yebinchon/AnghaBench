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
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int*) ; 

__attribute__((used)) static ssize_t FUNC3(void)
{
	ssize_t val = -1;
	const char *str = FUNC1("CONTENT_LENGTH");

	if (str && *str && !FUNC2(str, &val))
		FUNC0("failed to parse CONTENT_LENGTH: %s", str);
	return val;
}