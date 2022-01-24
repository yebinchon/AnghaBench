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
struct section {TYPE_2__* reltab; TYPE_1__ shdr; } ;
struct TYPE_6__ {void* r_addend; void* r_info; int /*<<< orphan*/  r_offset; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_2__ Elf_Rel ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ SHT_REL_TYPE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC3 (TYPE_2__*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int) ; 
 struct section* secs ; 
 int shnum ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(FILE *fp)
{
	int i,j;
	for (i = 0; i < shnum; i++) {
		struct section *sec = &secs[i];
		if (sec->shdr.sh_type != SHT_REL_TYPE) {
			continue;
		}
		sec->reltab = FUNC5(sec->shdr.sh_size);
		if (!sec->reltab) {
			FUNC0("malloc of %d bytes for relocs failed\n",
				sec->shdr.sh_size);
		}
		if (FUNC4(fp, sec->shdr.sh_offset, SEEK_SET) < 0) {
			FUNC0("Seek to %d failed: %s\n",
				sec->shdr.sh_offset, FUNC6(errno));
		}
		if (FUNC3(sec->reltab, 1, sec->shdr.sh_size, fp)
		    != sec->shdr.sh_size) {
			FUNC0("Cannot read symbol table: %s\n",
				FUNC6(errno));
		}
		for (j = 0; j < sec->shdr.sh_size/sizeof(Elf_Rel); j++) {
			Elf_Rel *rel = &sec->reltab[j];
			rel->r_offset = FUNC1(rel->r_offset);
			rel->r_info   = FUNC2(rel->r_info);
#if (SHT_REL_TYPE == SHT_RELA)
			rel->r_addend = FUNC2(rel->r_addend);
#endif
		}
	}
}