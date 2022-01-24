#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cidr {int dummy; } ;
struct TYPE_4__ {scalar_t__ family; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 struct cidr* FUNC0 (char*) ; 
 struct cidr* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct cidr*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  printed ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char***,int*) ; 
 TYPE_1__* stack ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC9 (char*,char) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

int FUNC11(int argc, char **argv)
{
	int status = 0;
	char **arg = argv+2;
	struct cidr *a;

	if (argc < 3)
		FUNC10(argv[0]);

	a = FUNC9(argv[1], ':') ? FUNC1(argv[1]) : FUNC0(argv[1]);

	if (!a)
		FUNC10(argv[0]);

	FUNC4(a);

	while (FUNC8(&arg, &status));

	if (*arg)
	{
		FUNC6(stderr, "unknown operation '%s'\n", *arg);
		FUNC5(6);
	}

	if (!printed && (status < 2))
	{
		if (stack->family == AF_INET)
			FUNC2(stack);
		else
			FUNC3(stack);
	}

	FUNC7("\n");

	FUNC5(status);
}