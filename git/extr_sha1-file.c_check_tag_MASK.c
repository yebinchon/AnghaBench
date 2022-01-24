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
typedef  int /*<<< orphan*/  t ;
struct tag {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tag*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct tag*,void const*,size_t) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static void FUNC4(const void *buf, size_t size)
{
	struct tag t;
	FUNC2(&t, 0, sizeof(t));
	if (FUNC3(the_repository, &t, buf, size))
		FUNC1(FUNC0("corrupt tag"));
}