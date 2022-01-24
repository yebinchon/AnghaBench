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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ base; } ;

/* Variables and functions */
 TYPE_1__ dscr ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC1(u32 reg, u32 val,
			       u32 lock0, u32 key0,
			       u32 lock1, u32 key1)
{
	FUNC0(key0, dscr.base + lock0);
	FUNC0(key1, dscr.base + lock1);
	FUNC0(val, dscr.base + reg);
	FUNC0(0, dscr.base + lock0);
	FUNC0(0, dscr.base + lock1);
}