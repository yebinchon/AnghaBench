#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* string; int /*<<< orphan*/  modified; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ libvar_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 TYPE_1__* FUNC1 (char const*) ; 
 TYPE_1__* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 

libvar_t *FUNC6(const char *var_name, const char *value)
{
	libvar_t *v;
	v = FUNC2(var_name);
	if (v) return v;
	//create new variable
	v = FUNC1(var_name);
	//variable string
	v->string = (char *) FUNC0(FUNC5(value) + 1);
	FUNC4(v->string, value);
	//the value
	v->value = FUNC3(v->string);
	//variable is modified
	v->modified = qtrue;
	//
	return v;
}