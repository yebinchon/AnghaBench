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
struct TYPE_5__ {scalar_t__ sh_type; int sh_size; int /*<<< orphan*/  sh_offset; } ;
struct section {TYPE_2__* symtab; TYPE_1__ shdr; } ;
struct TYPE_6__ {int /*<<< orphan*/  st_shndx; int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_value; int /*<<< orphan*/  st_name; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_2__ Elf_Sym ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ SHT_SYMTAB ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC5 (TYPE_2__*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (int) ; 
 struct section* secs ; 
 int shnum ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(FILE *fp)
{
	int i,j;
	for (i = 0; i < shnum; i++) {
		struct section *sec = &secs[i];
		if (sec->shdr.sh_type != SHT_SYMTAB) {
			continue;
		}
		sec->symtab = FUNC7(sec->shdr.sh_size);
		if (!sec->symtab) {
			FUNC0("malloc of %d bytes for symtab failed\n",
				sec->shdr.sh_size);
		}
		if (FUNC6(fp, sec->shdr.sh_offset, SEEK_SET) < 0) {
			FUNC0("Seek to %d failed: %s\n",
				sec->shdr.sh_offset, FUNC8(errno));
		}
		if (FUNC5(sec->symtab, 1, sec->shdr.sh_size, fp)
		    != sec->shdr.sh_size) {
			FUNC0("Cannot read symbol table: %s\n",
				FUNC8(errno));
		}
		for (j = 0; j < sec->shdr.sh_size/sizeof(Elf_Sym); j++) {
			Elf_Sym *sym = &sec->symtab[j];
			sym->st_name  = FUNC3(sym->st_name);
			sym->st_value = FUNC1(sym->st_value);
			sym->st_size  = FUNC4(sym->st_size);
			sym->st_shndx = FUNC2(sym->st_shndx);
		}
	}
}