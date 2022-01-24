#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ehdr ;
struct TYPE_6__ {scalar_t__* e_ident; int e_phnum; int e_phoff; int p_type; int p_align; int /*<<< orphan*/  p_filesz; int /*<<< orphan*/  p_offset; scalar_t__ p_paddr; } ;
typedef  int /*<<< orphan*/  Elf64_Phdr ;
typedef  int /*<<< orphan*/  Elf64_Ehdr ;
typedef  TYPE_1__ Elf32_Phdr ;
typedef  TYPE_1__ Elf32_Ehdr ;

/* Variables and functions */
 size_t EI_MAG0 ; 
 size_t EI_MAG1 ; 
 size_t EI_MAG2 ; 
 size_t EI_MAG3 ; 
 scalar_t__ ELFMAG0 ; 
 scalar_t__ ELFMAG1 ; 
 scalar_t__ ELFMAG2 ; 
 scalar_t__ ELFMAG3 ; 
 scalar_t__ LOAD_PHYSICAL_ADDR ; 
#define  PT_LOAD 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void *output)
{
#ifdef CONFIG_X86_64
	Elf64_Ehdr ehdr;
	Elf64_Phdr *phdrs, *phdr;
#else
	Elf32_Ehdr ehdr;
	Elf32_Phdr *phdrs, *phdr;
#endif
	void *dest;
	int i;

	FUNC4(&ehdr, output, sizeof(ehdr));
	if (ehdr.e_ident[EI_MAG0] != ELFMAG0 ||
	   ehdr.e_ident[EI_MAG1] != ELFMAG1 ||
	   ehdr.e_ident[EI_MAG2] != ELFMAG2 ||
	   ehdr.e_ident[EI_MAG3] != ELFMAG3) {
		FUNC1("Kernel is not a valid ELF file");
		return;
	}

	FUNC0("Parsing ELF... ");

	phdrs = FUNC3(sizeof(*phdrs) * ehdr.e_phnum);
	if (!phdrs)
		FUNC1("Failed to allocate space for phdrs");

	FUNC4(phdrs, output + ehdr.e_phoff, sizeof(*phdrs) * ehdr.e_phnum);

	for (i = 0; i < ehdr.e_phnum; i++) {
		phdr = &phdrs[i];

		switch (phdr->p_type) {
		case PT_LOAD:
#ifdef CONFIG_X86_64
			if ((phdr->p_align % 0x200000) != 0)
				error("Alignment of LOAD segment isn't multiple of 2MB");
#endif
#ifdef CONFIG_RELOCATABLE
			dest = output;
			dest += (phdr->p_paddr - LOAD_PHYSICAL_ADDR);
#else
			dest = (void *)(phdr->p_paddr);
#endif
			FUNC5(dest, output + phdr->p_offset, phdr->p_filesz);
			break;
		default: /* Ignore other PT_* */ break;
		}
	}

	FUNC2(phdrs);
}