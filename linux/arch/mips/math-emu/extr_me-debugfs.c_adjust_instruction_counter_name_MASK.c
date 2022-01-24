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

__attribute__((used)) static void FUNC1(char *out_name, char *in_name)
{
	int i = 0;

	FUNC0(out_name, in_name);
	while (in_name[i] != '\0') {
		if (out_name[i] == '_')
			out_name[i] = '.';
		i++;
	}
}