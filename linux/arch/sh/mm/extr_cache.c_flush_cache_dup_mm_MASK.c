#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mm_struct {int dummy; } ;
struct TYPE_3__ {scalar_t__ n_aliases; } ;
struct TYPE_4__ {TYPE_1__ dcache; } ;

/* Variables and functions */
 TYPE_2__ boot_cpu_data ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mm_struct*,int) ; 
 int /*<<< orphan*/  local_flush_cache_dup_mm ; 

void FUNC1(struct mm_struct *mm)
{
	if (boot_cpu_data.dcache.n_aliases == 0)
		return;

	FUNC0(local_flush_cache_dup_mm, mm, 1);
}