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
typedef  int /*<<< orphan*/  timestamp_t ;
typedef  int /*<<< orphan*/  time_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 (char const**) ; 
 int /*<<< orphan*/  FUNC2 (char const**) ; 
 int /*<<< orphan*/  FUNC3 (char const**) ; 
 int /*<<< orphan*/  FUNC4 (char const**,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const**) ; 
 int /*<<< orphan*/  FUNC6 (char const**) ; 
 scalar_t__ FUNC7 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usage_msg ; 

int FUNC10(int argc, const char **argv)
{
	const char *x;

	argv++;
	if (!*argv)
		FUNC9(usage_msg);
	if (!FUNC8(*argv, "relative"))
		FUNC6(argv+1);
	else if (!FUNC8(*argv, "human"))
		FUNC5(argv+1);
	else if (FUNC7(*argv, "show:", &x))
		FUNC4(argv+1, x);
	else if (!FUNC8(*argv, "parse"))
		FUNC3(argv+1);
	else if (!FUNC8(*argv, "approxidate"))
		FUNC2(argv+1);
	else if (!FUNC8(*argv, "timestamp"))
		FUNC1(argv+1);
	else if (!FUNC8(*argv, "getnanos"))
		FUNC0(argv+1);
	else if (!FUNC8(*argv, "is64bit"))
		return sizeof(timestamp_t) == 8 ? 0 : 1;
	else if (!FUNC8(*argv, "time_t-is64bit"))
		return sizeof(time_t) == 8 ? 0 : 1;
	else
		FUNC9(usage_msg);
	return 0;
}