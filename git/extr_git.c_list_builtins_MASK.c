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
struct string_list {int dummy; } ;
struct TYPE_3__ {unsigned int option; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* commands ; 
 int /*<<< orphan*/  FUNC1 (struct string_list*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct string_list *out, unsigned int exclude_option)
{
	int i;
	for (i = 0; i < FUNC0(commands); i++) {
		if (exclude_option &&
		    (commands[i].option & exclude_option))
			continue;
		FUNC1(out, commands[i].cmd);
	}
}