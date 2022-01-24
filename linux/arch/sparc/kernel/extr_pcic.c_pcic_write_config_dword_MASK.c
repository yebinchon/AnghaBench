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
struct linux_pcic {scalar_t__ pcic_config_space_data; scalar_t__ pcic_config_space_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 struct linux_pcic pcic0 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(unsigned int busno, unsigned int devfn,
    int where, u32 value)
{
	struct linux_pcic *pcic;
	unsigned long flags;

	pcic = &pcic0;

	FUNC2(flags);
	FUNC3(FUNC0(busno, devfn, where), pcic->pcic_config_space_addr);
	FUNC3(value, pcic->pcic_config_space_data + (where&4));
	FUNC1(flags);
	return 0;
}