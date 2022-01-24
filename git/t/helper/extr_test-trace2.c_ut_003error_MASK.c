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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 

__attribute__((used)) static int FUNC2(int argc, const char **argv)
{
	int k;

	if (!argv[0] || !*argv[0])
		FUNC0("expect <error_message>");

	for (k = 0; k < argc; k++)
		FUNC1("%s", argv[k]);

	return 0;
}