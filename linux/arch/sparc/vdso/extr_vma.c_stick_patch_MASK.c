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
struct vdso_image {int dummy; } ;
struct vdso_elfinfo {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct vdso_image const*,struct vdso_elfinfo*,int) ; 
 int FUNC1 (struct vdso_elfinfo*,char*,char*,int) ; 

__attribute__((used)) static int FUNC2(const struct vdso_image *image, struct vdso_elfinfo *e, bool elf64)
{
	int err;

	err = FUNC0(image, e, elf64);
	if (err)
		return err;

	err = FUNC1(e,
			       "__vdso_gettimeofday",
			       "__vdso_gettimeofday_stick", elf64);
	if (err)
		return err;

	return FUNC1(e,
				"__vdso_clock_gettime",
				"__vdso_clock_gettime_stick", elf64);
	return 0;
}