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
struct cpuinfo_mips {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct cpuinfo_mips*) ; 
 unsigned int FUNC1 (struct cpuinfo_mips*) ; 
 unsigned int FUNC2 (struct cpuinfo_mips*) ; 
 unsigned int FUNC3 (struct cpuinfo_mips*) ; 
 unsigned int FUNC4 (struct cpuinfo_mips*) ; 
 int /*<<< orphan*/  FUNC5 (struct cpuinfo_mips*) ; 

__attribute__((used)) static inline void FUNC6(struct cpuinfo_mips *c)
{
	unsigned int ok;

	ok = FUNC0(c);
	if (ok)
		ok = FUNC1(c);
	if (ok)
		ok = FUNC2(c);
	if (ok)
		ok = FUNC3(c);
	if (ok)
		ok = FUNC4(c);
	if (ok)
		FUNC5(c);
}