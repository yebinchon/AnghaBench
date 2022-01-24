#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct section {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  r_offset; int /*<<< orphan*/  r_info; } ;
struct TYPE_5__ {scalar_t__ st_shndx; } ;
typedef  TYPE_1__ Elf_Sym ;
typedef  TYPE_2__ Elf_Rel ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
#define  R_386_32 132 
#define  R_386_NONE 131 
#define  R_386_PC16 130 
#define  R_386_PC32 129 
#define  R_386_PC8 128 
 scalar_t__ SHN_ABS ; 
 int /*<<< orphan*/  S_ABS ; 
 int /*<<< orphan*/  S_REL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  relocs32 ; 

__attribute__((used)) static int FUNC5(struct section *sec, Elf_Rel *rel, Elf_Sym *sym,
		      const char *symname)
{
	unsigned r_type = FUNC0(rel->r_info);
	int shn_abs = (sym->st_shndx == SHN_ABS) && !FUNC3(S_REL, symname);

	switch (r_type) {
	case R_386_NONE:
	case R_386_PC32:
	case R_386_PC16:
	case R_386_PC8:
		/*
		 * NONE can be ignored and PC relative relocations don't
		 * need to be adjusted.
		 */
		break;

	case R_386_32:
		if (shn_abs) {
			/*
			 * Whitelisted absolute symbols do not require
			 * relocation.
			 */
			if (FUNC3(S_ABS, symname))
				break;

			FUNC2("Invalid absolute %s relocation: %s\n",
			    FUNC4(r_type), symname);
			break;
		}

		FUNC1(&relocs32, rel->r_offset);
		break;

	default:
		FUNC2("Unsupported relocation type: %s (%d)\n",
		    FUNC4(r_type), r_type);
		break;
	}

	return 0;
}