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
struct TYPE_5__ {scalar_t__ st_value; int /*<<< orphan*/  st_info; } ;
typedef  TYPE_1__ Elf_Sym ;
typedef  TYPE_2__ Elf_Rel ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
#define  R_MIPS_26 139 
#define  R_MIPS_32 138 
#define  R_MIPS_64 137 
#define  R_MIPS_HI16 136 
#define  R_MIPS_HIGHER 135 
#define  R_MIPS_HIGHEST 134 
#define  R_MIPS_LO16 133 
#define  R_MIPS_NONE 132 
#define  R_MIPS_PC16 131 
#define  R_MIPS_PC21_S2 130 
#define  R_MIPS_PC26_S2 129 
#define  R_MIPS_REL32 128 
 unsigned int STB_WEAK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  relocs ; 

__attribute__((used)) static int FUNC6(struct section *sec, Elf_Rel *rel, Elf_Sym *sym,
		      const char *symname)
{
	unsigned r_type = FUNC0(rel->r_info);
	unsigned bind = FUNC1(sym->st_info);

	if ((bind == STB_WEAK) && (sym->st_value == 0)) {
		/* Don't relocate weak symbols without a target */
		return 0;
	}

	if (FUNC4(symname))
		return 0;

	switch (r_type) {
	case R_MIPS_NONE:
	case R_MIPS_REL32:
	case R_MIPS_PC16:
	case R_MIPS_PC21_S2:
	case R_MIPS_PC26_S2:
		/*
		 * NONE can be ignored and PC relative relocations don't
		 * need to be adjusted.
		 */
	case R_MIPS_HIGHEST:
	case R_MIPS_HIGHER:
		/* We support relocating within the same 4Gb segment only,
		 * thus leaving the top 32bits unchanged
		 */
	case R_MIPS_LO16:
		/* We support relocating by 64k jumps only
		 * thus leaving the bottom 16bits unchanged
		 */
		break;

	case R_MIPS_64:
	case R_MIPS_32:
	case R_MIPS_26:
	case R_MIPS_HI16:
		FUNC2(&relocs, rel->r_offset, r_type);
		break;

	default:
		FUNC3("Unsupported relocation type: %s (%d)\n",
		    FUNC5(r_type), r_type);
		break;
	}

	return 0;
}