#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u64 ;
struct memtype {int dummy; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 struct memtype* FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  memtype_rbroot ; 

struct memtype *FUNC1(u64 addr)
{
	return FUNC0(&memtype_rbroot, addr, addr + PAGE_SIZE);
}