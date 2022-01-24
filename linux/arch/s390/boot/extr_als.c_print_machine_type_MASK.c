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
struct cpuid {int /*<<< orphan*/  machine; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpuid*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	static char mach_str[80] = "Detected machine-type number: ";
	char type_str[5];
	struct cpuid id;

	FUNC0(&id);
	FUNC3(type_str, id.machine);
	FUNC2(mach_str, type_str);
	FUNC2(mach_str, "\n");
	FUNC1(mach_str);
}