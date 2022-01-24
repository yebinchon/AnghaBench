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
typedef  int /*<<< orphan*/  uiTextStretch ;
struct TYPE_5__ {int /*<<< orphan*/  stretch; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef  TYPE_2__ uiAttribute ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uiAttributeTypeStretch ; 

uiAttribute *FUNC1(uiTextStretch stretch)
{
	uiAttribute *a;

	a = FUNC0(uiAttributeTypeStretch);
	a->u.stretch = stretch;
	return a;
}