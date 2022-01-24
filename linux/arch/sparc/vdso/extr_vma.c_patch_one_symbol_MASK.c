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
struct vdso_elfinfo {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct vdso_elfinfo*,char const*,char const*) ; 
 int FUNC1 (struct vdso_elfinfo*,char const*,char const*) ; 

__attribute__((used)) static int FUNC2(struct vdso_elfinfo *e, const char *orig,
			    const char *new_target, bool elf64)
{
	if (elf64)
		return FUNC1(e, orig, new_target);
	else
		return FUNC0(e, orig, new_target);
}