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
struct TYPE_2__ {int /*<<< orphan*/  dest_logical; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* apic ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

__attribute__((used)) static void FUNC3(unsigned long mask, int vector)
{
	unsigned long flags;

	FUNC2(flags);
	FUNC0(mask, vector, apic->dest_logical);
	FUNC1(flags);
}