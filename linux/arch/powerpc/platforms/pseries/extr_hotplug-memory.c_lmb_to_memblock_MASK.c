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
struct memory_block {int dummy; } ;
struct mem_section {int dummy; } ;
struct drmem_lmb {int /*<<< orphan*/  base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mem_section* FUNC1 (unsigned long) ; 
 struct memory_block* FUNC2 (struct mem_section*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct memory_block *FUNC4(struct drmem_lmb *lmb)
{
	unsigned long section_nr;
	struct mem_section *mem_sect;
	struct memory_block *mem_block;

	section_nr = FUNC3(FUNC0(lmb->base_addr));
	mem_sect = FUNC1(section_nr);

	mem_block = FUNC2(mem_sect);
	return mem_block;
}