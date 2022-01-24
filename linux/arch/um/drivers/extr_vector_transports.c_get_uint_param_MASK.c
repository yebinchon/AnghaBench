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
struct arglist {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ,unsigned int*) ; 
 char* FUNC1 (struct arglist*,char*) ; 

__attribute__((used)) static bool FUNC2(
	struct arglist *def, char *param, unsigned int *result)
{
	char *arg = FUNC1(def, param);

	if (arg != NULL) {
		if (FUNC0(arg, 0, result) == 0)
			return true;
	}
	return false;
}