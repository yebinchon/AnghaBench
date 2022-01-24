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
struct cmdline_parts {struct cmdline_parts* next_parts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmdline_parts*) ; 
 int /*<<< orphan*/  FUNC1 (struct cmdline_parts*) ; 

void FUNC2(struct cmdline_parts **parts)
{
	struct cmdline_parts *next_parts;

	while (*parts) {
		next_parts = (*parts)->next_parts;
		FUNC0(*parts);
		FUNC1(*parts);
		*parts = next_parts;
	}
}