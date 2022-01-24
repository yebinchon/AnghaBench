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
struct TYPE_4__ {int /*<<< orphan*/  s; struct TYPE_4__* graphemes; int /*<<< orphan*/  defaultFont; int /*<<< orphan*/  attrs; } ;
typedef  TYPE_1__ uiDrawTextLayout ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(uiDrawTextLayout *layout)
{
	FUNC2(layout->attrs);
	FUNC1(layout->defaultFont);
	FUNC3(layout->graphemes);
	FUNC0(layout->s);
	FUNC3(layout);
}