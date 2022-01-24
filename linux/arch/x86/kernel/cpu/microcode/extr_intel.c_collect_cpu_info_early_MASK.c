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
struct cpu_signature {unsigned int sig; int pf; int /*<<< orphan*/  rev; int /*<<< orphan*/  member_0; } ;
struct ucode_cpu_info {int valid; struct cpu_signature cpu_sig; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_IA32_PLATFORM_ID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct ucode_cpu_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*,unsigned int*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 unsigned int FUNC4 (unsigned int) ; 
 unsigned int FUNC5 (unsigned int) ; 

__attribute__((used)) static int FUNC6(struct ucode_cpu_info *uci)
{
	unsigned int val[2];
	unsigned int family, model;
	struct cpu_signature csig = { 0 };
	unsigned int eax, ebx, ecx, edx;

	FUNC1(uci, 0, sizeof(*uci));

	eax = 0x00000001;
	ecx = 0;
	FUNC2(&eax, &ebx, &ecx, &edx);
	csig.sig = eax;

	family = FUNC4(eax);
	model  = FUNC5(eax);

	if ((model >= 5) || (family > 6)) {
		/* get processor flags from MSR 0x17 */
		FUNC3(MSR_IA32_PLATFORM_ID, val[0], val[1]);
		csig.pf = 1 << ((val[1] >> 18) & 7);
	}

	csig.rev = FUNC0();

	uci->cpu_sig = csig;
	uci->valid = 1;

	return 0;
}