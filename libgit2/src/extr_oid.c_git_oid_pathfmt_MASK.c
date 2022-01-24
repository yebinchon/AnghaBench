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
struct TYPE_3__ {int /*<<< orphan*/ * id; } ;
typedef  TYPE_1__ git_oid ;

/* Variables and functions */
 char* FUNC0 (char*,int /*<<< orphan*/ ) ; 

void FUNC1(char *str, const git_oid *oid)
{
	size_t i;

	str = FUNC0(str, oid->id[0]);
	*str++ = '/';
	for (i = 1; i < sizeof(oid->id); i++)
		str = FUNC0(str, oid->id[i]);
}