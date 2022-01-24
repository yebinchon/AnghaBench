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

/* Variables and functions */
 scalar_t__ ELFCLASS64 ; 
 scalar_t__ elf_class ; 
 int FUNC0 (char const*,void*) ; 
 int FUNC1 (char const*,void*) ; 

__attribute__((used)) static bool FUNC2(const char *path, void *vdso)
{
	if (elf_class == ELFCLASS64)
		return FUNC1(path, vdso);
	else
		return FUNC0(path, vdso);
}