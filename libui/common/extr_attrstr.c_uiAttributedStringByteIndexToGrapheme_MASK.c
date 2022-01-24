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
struct TYPE_6__ {size_t* u8tou16; TYPE_1__* graphemes; } ;
typedef  TYPE_2__ uiAttributedString ;
struct TYPE_5__ {size_t* pointsToGraphemes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 () ; 

size_t FUNC2(uiAttributedString *s, size_t pos)
{
	FUNC0(s);
	if (FUNC1())
		pos = s->u8tou16[pos];
	return s->graphemes->pointsToGraphemes[pos];
}