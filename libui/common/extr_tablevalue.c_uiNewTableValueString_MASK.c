#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* str; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef  TYPE_2__ uiTableValue ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  uiTableValueTypeString ; 
 scalar_t__ FUNC3 (int,char*) ; 

uiTableValue *FUNC4(const char *str)
{
	uiTableValue *v;

	v = FUNC0(uiTableValueTypeString);
	v->u.str = (char *) FUNC3((FUNC2(str) + 1) * sizeof (char), "char[] (uiTableValue)");
	FUNC1(v->u.str, str);
	return v;
}