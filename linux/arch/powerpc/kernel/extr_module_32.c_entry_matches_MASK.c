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
struct ppc_plt_entry {int* jump; } ;
typedef  int /*<<< orphan*/  Elf32_Addr ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PPC_INST_ADDI ; 
 int PPC_INST_ADDIS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R12 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC4(struct ppc_plt_entry *entry, Elf32_Addr val)
{
	if (entry->jump[0] != (PPC_INST_ADDIS | FUNC3(R12) | FUNC0(val)))
		return 0;
	if (entry->jump[1] != (PPC_INST_ADDI | FUNC3(R12) | FUNC2(R12) |
			       FUNC1(val)))
		return 0;
	return 1;
}