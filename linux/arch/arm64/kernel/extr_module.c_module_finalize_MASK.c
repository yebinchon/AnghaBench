#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* ftrace_trampoline; } ;
struct module {TYPE_1__ arch; } ;
struct TYPE_8__ {size_t e_shstrndx; int e_shnum; } ;
struct TYPE_7__ {int sh_offset; int sh_name; scalar_t__ sh_addr; int /*<<< orphan*/  sh_size; } ;
typedef  TYPE_2__ Elf_Shdr ;
typedef  TYPE_3__ Elf_Ehdr ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_DYNAMIC_FTRACE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 

int FUNC3(const Elf_Ehdr *hdr,
		    const Elf_Shdr *sechdrs,
		    struct module *me)
{
	const Elf_Shdr *s, *se;
	const char *secstrs = (void *)hdr + sechdrs[hdr->e_shstrndx].sh_offset;

	for (s = sechdrs, se = sechdrs + hdr->e_shnum; s < se; s++) {
		if (FUNC2(".altinstructions", secstrs + s->sh_name) == 0)
			FUNC1((void *)s->sh_addr, s->sh_size);
#ifdef CONFIG_ARM64_MODULE_PLTS
		if (IS_ENABLED(CONFIG_DYNAMIC_FTRACE) &&
		    !strcmp(".text.ftrace_trampoline", secstrs + s->sh_name))
			me->arch.ftrace_trampoline = (void *)s->sh_addr;
#endif
	}

	return 0;
}