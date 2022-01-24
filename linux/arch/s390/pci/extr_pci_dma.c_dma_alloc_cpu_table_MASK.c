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

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int ZPCI_TABLE_ENTRIES ; 
 unsigned long ZPCI_TABLE_INVALID ; 
 int /*<<< orphan*/  dma_region_table_cache ; 
 unsigned long* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

unsigned long *FUNC1(void)
{
	unsigned long *table, *entry;

	table = FUNC0(dma_region_table_cache, GFP_ATOMIC);
	if (!table)
		return NULL;

	for (entry = table; entry < table + ZPCI_TABLE_ENTRIES; entry++)
		*entry = ZPCI_TABLE_INVALID;
	return table;
}