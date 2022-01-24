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
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 TYPE_1__ command_buf ; 
 scalar_t__ next_mark ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,char const**) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(void)
{
	const char *v;
	if (FUNC1(command_buf.buf, "mark :", &v)) {
		next_mark = FUNC2(v, NULL, 10);
		FUNC0();
	}
	else
		next_mark = 0;
}