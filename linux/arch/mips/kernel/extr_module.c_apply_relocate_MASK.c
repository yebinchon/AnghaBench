#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct module {int dummy; } ;
typedef  int /*<<< orphan*/  Elf_Shdr ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*,unsigned int,unsigned int,struct module*,int) ; 

int FUNC1(Elf_Shdr *sechdrs, const char *strtab,
		   unsigned int symindex, unsigned int relsec,
		   struct module *me)
{
	return FUNC0(sechdrs, strtab, symindex, relsec, me, false);
}