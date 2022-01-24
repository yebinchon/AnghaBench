#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ sh_type; } ;
struct section {int /*<<< orphan*/  shdr_offset; TYPE_1__ shdr; } ;
typedef  int /*<<< orphan*/  shdr ;
struct TYPE_8__ {int e_shnum; } ;
struct TYPE_7__ {scalar_t__ sh_size; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_2__ Elf_Shdr ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ SHT_REL_TYPE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,...) ; 
 TYPE_5__ ehdr ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (TYPE_2__*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,int,int,int /*<<< orphan*/ *) ; 
 struct section* secs ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(FILE *fp)
{
	int i;
	Elf_Shdr shdr;

	for (i = 0; i < ehdr.e_shnum; i++) {
		struct section *sec = &secs[i];

		if (sec->shdr.sh_type != SHT_REL_TYPE)
			continue;

		if (FUNC2(fp, sec->shdr_offset, SEEK_SET) < 0)
			FUNC0("Seek to %d failed: %s\n",
			    sec->shdr_offset, FUNC4(errno));

		if (FUNC1(&shdr, sizeof(shdr), 1, fp) != 1)
			FUNC0("Cannot read ELF section headers %d/%d: %s\n",
			    i, ehdr.e_shnum, FUNC4(errno));

		/* Set relocation section size to 0, effectively removing it.
		 * This is necessary due to lack of support for relocations
		 * in objcopy when creating 32bit elf from 64bit elf.
		 */
		shdr.sh_size = 0;

		if (FUNC2(fp, sec->shdr_offset, SEEK_SET) < 0)
			FUNC0("Seek to %d failed: %s\n",
			    sec->shdr_offset, FUNC4(errno));

		if (FUNC3(&shdr, sizeof(shdr), 1, fp) != 1)
			FUNC0("Cannot write ELF section headers %d/%d: %s\n",
			    i, ehdr.e_shnum, FUNC4(errno));
	}
}