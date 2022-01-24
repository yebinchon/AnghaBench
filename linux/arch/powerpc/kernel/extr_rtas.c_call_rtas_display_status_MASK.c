#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  args; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 unsigned long FUNC0 () ; 
 TYPE_1__ rtas ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ *,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

__attribute__((used)) static void FUNC3(unsigned char c)
{
	unsigned long s;

	if (!rtas.base)
		return;

	s = FUNC0();
	FUNC1(&rtas.args, 10, 1, 1, NULL, c);
	FUNC2(s);
}