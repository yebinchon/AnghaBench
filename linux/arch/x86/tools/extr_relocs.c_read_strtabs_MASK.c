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
struct TYPE_2__ {scalar_t__ sh_type; scalar_t__ sh_size; int /*<<< orphan*/  sh_offset; } ;
struct section {TYPE_1__ shdr; int /*<<< orphan*/  strtab; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ SHT_STRTAB ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct section* secs ; 
 int shnum ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(FILE *fp)
{
	int i;
	for (i = 0; i < shnum; i++) {
		struct section *sec = &secs[i];
		if (sec->shdr.sh_type != SHT_STRTAB) {
			continue;
		}
		sec->strtab = FUNC3(sec->shdr.sh_size);
		if (!sec->strtab) {
			FUNC0("malloc of %d bytes for strtab failed\n",
				sec->shdr.sh_size);
		}
		if (FUNC2(fp, sec->shdr.sh_offset, SEEK_SET) < 0) {
			FUNC0("Seek to %d failed: %s\n",
				sec->shdr.sh_offset, FUNC4(errno));
		}
		if (FUNC1(sec->strtab, 1, sec->shdr.sh_size, fp)
		    != sec->shdr.sh_size) {
			FUNC0("Cannot read symbol table: %s\n",
				FUNC4(errno));
		}
	}
}