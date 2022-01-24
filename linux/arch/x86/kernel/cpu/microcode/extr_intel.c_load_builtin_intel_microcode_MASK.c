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
struct cpio_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_X86_32 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cpio_data*,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*,unsigned int*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,int,int) ; 
 int FUNC4 (unsigned int) ; 
 int FUNC5 (unsigned int) ; 
 int FUNC6 (unsigned int) ; 

__attribute__((used)) static bool FUNC7(struct cpio_data *cp)
{
	unsigned int eax = 1, ebx, ecx = 0, edx;
	char name[30];

	if (FUNC0(CONFIG_X86_32))
		return false;

	FUNC2(&eax, &ebx, &ecx, &edx);

	FUNC3(name, "intel-ucode/%02x-%02x-%02x",
		      FUNC4(eax), FUNC5(eax), FUNC6(eax));

	return FUNC1(cp, name);
}