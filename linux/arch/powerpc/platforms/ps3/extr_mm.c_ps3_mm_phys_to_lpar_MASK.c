#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned long offset; } ;
struct TYPE_4__ {unsigned long size; } ;
struct TYPE_6__ {unsigned long total; TYPE_2__ r1; TYPE_1__ rm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 TYPE_3__ map ; 

unsigned long FUNC2(unsigned long phys_addr)
{
	FUNC0(FUNC1(phys_addr));
	return (phys_addr < map.rm.size || phys_addr >= map.total)
		? phys_addr : phys_addr + map.r1.offset;
}