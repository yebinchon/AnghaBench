#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char const* name; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 TYPE_1__* commands ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC3(const char *prog)
{
	size_t i;

	FUNC2(stderr, "usage: %s <cmd>...\n\nAvailable commands:\n\n", prog);
	for (i = 0; i < FUNC0(commands); i++)
		FUNC2(stderr, "\t%s\n", commands[i].name);

	FUNC1(EXIT_FAILURE);
}