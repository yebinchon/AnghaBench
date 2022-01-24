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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/ * reply_buffer ; 

__attribute__((used)) static void FUNC2(char *message, int inr)
{
	int i;

	FUNC0("%s ", message);
	if (inr >= 0)
		for (i = 0; i < inr; i++)
			FUNC1("repl[%d]=%x ", i, reply_buffer[i]);
	FUNC1("\n");
}