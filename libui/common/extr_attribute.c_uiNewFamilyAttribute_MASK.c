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
struct TYPE_5__ {char* family; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef  TYPE_2__ uiAttribute ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  uiAttributeTypeFamily ; 
 scalar_t__ FUNC3 (int,char*) ; 

uiAttribute *FUNC4(const char *family)
{
	uiAttribute *a;

	a = FUNC0(uiAttributeTypeFamily);
	a->u.family = (char *) FUNC3((FUNC2(family) + 1) * sizeof (char), "char[] (uiAttribute)");
	FUNC1(a->u.family, family);
	return a;
}