#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int sh_link; void* sh_entsize; void* sh_addralign; void* sh_info; void* sh_size; int /*<<< orphan*/  sh_offset; int /*<<< orphan*/  sh_addr; void* sh_flags; void* sh_type; void* sh_name; } ;
struct section {TYPE_1__ shdr; struct section* link; int /*<<< orphan*/  shdr_offset; } ;
typedef  int /*<<< orphan*/  shdr ;
struct TYPE_7__ {int e_shnum; int /*<<< orphan*/  e_shoff; } ;
struct TYPE_6__ {int /*<<< orphan*/  sh_entsize; int /*<<< orphan*/  sh_addralign; int /*<<< orphan*/  sh_info; int /*<<< orphan*/  sh_link; int /*<<< orphan*/  sh_size; int /*<<< orphan*/  sh_offset; int /*<<< orphan*/  sh_addr; int /*<<< orphan*/  sh_flags; int /*<<< orphan*/  sh_type; int /*<<< orphan*/  sh_name; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_2__ Elf_Shdr ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 struct section* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 TYPE_4__ ehdr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC6 (TYPE_2__*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct section* secs ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(FILE *fp)
{
	int i;
	Elf_Shdr shdr;

	secs = FUNC0(ehdr.e_shnum, sizeof(struct section));
	if (!secs)
		FUNC1("Unable to allocate %d section headers\n", ehdr.e_shnum);

	if (FUNC7(fp, ehdr.e_shoff, SEEK_SET) < 0)
		FUNC1("Seek to %d failed: %s\n", ehdr.e_shoff, FUNC9(errno));

	for (i = 0; i < ehdr.e_shnum; i++) {
		struct section *sec = &secs[i];

		sec->shdr_offset = FUNC8(fp);
		if (FUNC6(&shdr, sizeof(shdr), 1, fp) != 1)
			FUNC1("Cannot read ELF section headers %d/%d: %s\n",
			    i, ehdr.e_shnum, FUNC9(errno));
		sec->shdr.sh_name      = FUNC4(shdr.sh_name);
		sec->shdr.sh_type      = FUNC4(shdr.sh_type);
		sec->shdr.sh_flags     = FUNC5(shdr.sh_flags);
		sec->shdr.sh_addr      = FUNC2(shdr.sh_addr);
		sec->shdr.sh_offset    = FUNC3(shdr.sh_offset);
		sec->shdr.sh_size      = FUNC5(shdr.sh_size);
		sec->shdr.sh_link      = FUNC4(shdr.sh_link);
		sec->shdr.sh_info      = FUNC4(shdr.sh_info);
		sec->shdr.sh_addralign = FUNC5(shdr.sh_addralign);
		sec->shdr.sh_entsize   = FUNC5(shdr.sh_entsize);
		if (sec->shdr.sh_link < ehdr.e_shnum)
			sec->link = &secs[sec->shdr.sh_link];
	}
}