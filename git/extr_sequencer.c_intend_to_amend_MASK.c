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
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,struct object_id*) ; 
 char* FUNC3 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(void)
{
	struct object_id head;
	char *p;

	if (FUNC2("HEAD", &head))
		return FUNC1(FUNC0("cannot read HEAD"));

	p = FUNC3(&head);
	return FUNC6(p, FUNC5(p), FUNC4(), 1);
}