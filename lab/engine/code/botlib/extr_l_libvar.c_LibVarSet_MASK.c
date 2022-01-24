#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* string; int /*<<< orphan*/  modified; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ libvar_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 TYPE_1__* FUNC2 (char const*) ; 
 TYPE_1__* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 

void FUNC7(const char *var_name, const char *value)
{
	libvar_t *v;

	v = FUNC3(var_name);
	if (v)
	{
		FUNC0(v->string);
	} //end if
	else
	{
		v = FUNC2(var_name);
	} //end else
	//variable string
	v->string = (char *) FUNC1(FUNC6(value) + 1);
	FUNC5(v->string, value);
	//the value
	v->value = FUNC4(v->string);
	//variable is modified
	v->modified = qtrue;
}