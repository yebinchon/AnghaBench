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
struct elf_phdr {scalar_t__ p_type; int /*<<< orphan*/  p_memsz; scalar_t__ p_vaddr; } ;
struct coredump_params {int dummy; } ;
struct TYPE_2__ {int e_phnum; scalar_t__ e_phoff; } ;

/* Variables and functions */
 scalar_t__ GATE_ADDR ; 
 TYPE_1__* GATE_EHDR ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PT_LOAD ; 
 int /*<<< orphan*/  FUNC1 (struct coredump_params*,void*,size_t) ; 

int FUNC2(struct coredump_params *cprm)
{
	const struct elf_phdr *const gate_phdrs =
		(const struct elf_phdr *) (GATE_ADDR + GATE_EHDR->e_phoff);
	int i;

	for (i = 0; i < GATE_EHDR->e_phnum; ++i) {
		if (gate_phdrs[i].p_type == PT_LOAD) {
			void *addr = (void *)gate_phdrs[i].p_vaddr;
			size_t memsz = FUNC0(gate_phdrs[i].p_memsz);

			if (!FUNC1(cprm, addr, memsz))
				return 0;
			break;
		}
	}
	return 1;
}