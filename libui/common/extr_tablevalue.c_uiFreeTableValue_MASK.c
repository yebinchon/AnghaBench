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
struct TYPE_5__ {TYPE_2__* str; } ;
struct TYPE_6__ {int type; TYPE_1__ u; } ;
typedef  TYPE_2__ uiTableValue ;

/* Variables and functions */
#define  uiTableValueTypeString 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 

void FUNC1(uiTableValue *v)
{
	switch (v->type) {
	case uiTableValueTypeString:
		FUNC0(v->u.str);
		break;
	}
	FUNC0(v);
}