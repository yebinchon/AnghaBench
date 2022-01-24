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
typedef  int /*<<< orphan*/  u32 ;
struct linux_pcic {scalar_t__ pcic_config_space_data; int /*<<< orphan*/  pcic_config_space_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct linux_pcic pcic0 ; 
 int pcic_speculative ; 
 scalar_t__ pcic_trapped ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(unsigned int busno, unsigned int devfn,
    int where, u32 *value)
{
	struct linux_pcic *pcic;
	unsigned long flags;

	pcic = &pcic0;

	FUNC2(flags);
#if 0 /* does not fail here */
	pcic_speculative = 1;
	pcic_trapped = 0;
#endif
	FUNC5(FUNC0(busno, devfn, where), pcic->pcic_config_space_addr);
#if 0 /* does not fail here */
	nop();
	if (pcic_trapped) {
		local_irq_restore(flags);
		*value = ~0;
		return 0;
	}
#endif
	pcic_speculative = 2;
	pcic_trapped = 0;
	*value = FUNC4(pcic->pcic_config_space_data + (where&4));
	FUNC3();
	if (pcic_trapped) {
		pcic_speculative = 0;
		FUNC1(flags);
		*value = ~0;
		return 0;
	}
	pcic_speculative = 0;
	FUNC1(flags);
	return 0;
}