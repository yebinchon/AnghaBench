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
struct TYPE_2__ {int personality; } ;

/* Variables and functions */
 int ADDR_NO_RANDOMIZE ; 
 unsigned long PAGE_MASK ; 
 TYPE_1__* current ; 
 unsigned long FUNC0 () ; 
 scalar_t__ randomize_va_space ; 

unsigned long FUNC1(unsigned long sp)
{
	if (!(current->personality & ADDR_NO_RANDOMIZE) && randomize_va_space)
		sp -= FUNC0() & ~PAGE_MASK;
	return sp & ~0xf;
}