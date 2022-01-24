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
struct TYPE_4__ {int /*<<< orphan*/  ba; } ;
struct TYPE_3__ {int /*<<< orphan*/  ba; } ;
union cvmx_sli_mem_access_subidx {TYPE_2__ s; TYPE_1__ cn68xx; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCTEON_CN68XX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(union cvmx_sli_mem_access_subidx *pmas)
{
	if (FUNC0(OCTEON_CN68XX))
		pmas->cn68xx.ba++;
	else
		pmas->s.ba++;
}