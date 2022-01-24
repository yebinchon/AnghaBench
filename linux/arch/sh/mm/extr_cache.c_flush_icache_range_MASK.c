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
struct flusher_data {unsigned long addr1; unsigned long addr2; int /*<<< orphan*/ * vma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  local_flush_icache_range ; 

void FUNC1(unsigned long start, unsigned long end)
{
	struct flusher_data data;

	data.vma = NULL;
	data.addr1 = start;
	data.addr2 = end;

	FUNC0(local_flush_icache_range, (void *)&data, 1);
}