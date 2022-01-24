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
struct TYPE_3__ {int count; char** strings; } ;
typedef  TYPE_1__ git_strarray ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char** FUNC1 (int,int) ; 

void FUNC2(git_strarray *array, int argc, char **argv)
{
	unsigned int i;

	array->count = argc;
	array->strings = FUNC1(array->count, sizeof(char *));
	FUNC0(array->strings != NULL);

	for (i = 0; i < array->count; i++) {
		array->strings[i] = argv[i];
	}

	return;
}