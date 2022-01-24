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
struct TYPE_2__ {scalar_t__ desc; scalar_t__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_1__* wlc_calls ; 
 int wlc_calls_size ; 

__attribute__((used)) static void FUNC2(char *cmd)
{
	int i;
	FUNC1(stderr, "Usage: %s <command> [<argument> ...]\n"
					"\n"
					"Available commands:\n", cmd);
	for (i = 0; i < wlc_calls_size; i++) {
		FUNC1(stderr, "\t%-16s\t%s\n", wlc_calls[i].name ?: "", wlc_calls[i].desc ?: "");
	}
	FUNC1(stderr, "\n");
	FUNC0(1);
}