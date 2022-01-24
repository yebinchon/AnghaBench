#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  devdisr; } ;

/* Variables and functions */
 int CCSR_GUTS_DEVDISR_TB0 ; 
 int CCSR_GUTS_DEVDISR_TB1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* guts ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(bool freeze)
{
	uint32_t mask;

	mask = CCSR_GUTS_DEVDISR_TB0 | CCSR_GUTS_DEVDISR_TB1;
	if (freeze)
		FUNC2(&guts->devdisr, mask);
	else
		FUNC0(&guts->devdisr, mask);

	FUNC1(&guts->devdisr);
}