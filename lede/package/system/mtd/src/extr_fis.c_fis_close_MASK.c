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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * fis_desc ; 
 int /*<<< orphan*/  fis_erasesize ; 
 int fis_fd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void)
{
	if (fis_desc)
		FUNC1(fis_desc, fis_erasesize);

	if (fis_fd >= 0)
		FUNC0(fis_fd);

	fis_fd = -1;
	fis_desc = NULL;
}