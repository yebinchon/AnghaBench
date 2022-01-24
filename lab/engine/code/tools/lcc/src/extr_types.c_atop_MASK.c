#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* Type ;
struct TYPE_7__ {struct TYPE_7__* type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 

Type FUNC3(Type ty) {
	if (FUNC1(ty))
		return FUNC2(ty->type);
	FUNC0("type error: %s\n", "array expected");
	return FUNC2(ty);
}