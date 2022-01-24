#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  r_info; } ;
typedef  TYPE_1__ Elf64_Rela ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  R_IA64_IPLTLSB 134 
#define  R_IA64_IPLTMSB 133 
#define  R_IA64_PCREL21B 132 
#define  R_IA64_PLTOFF22 131 
#define  R_IA64_PLTOFF64I 130 
#define  R_IA64_PLTOFF64LSB 129 
#define  R_IA64_PLTOFF64MSB 128 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,unsigned int) ; 

__attribute__((used)) static unsigned int
FUNC2 (const Elf64_Rela *rela, unsigned int num)
{
	unsigned int i, ret = 0;

	/* Sure, this is order(n^2), but it's usually short, and not
           time critical */
	for (i = 0; i < num; i++) {
		switch (FUNC0(rela[i].r_info)) {
		      case R_IA64_PCREL21B:
		      case R_IA64_PLTOFF22:
		      case R_IA64_PLTOFF64I:
		      case R_IA64_PLTOFF64MSB:
		      case R_IA64_PLTOFF64LSB:
		      case R_IA64_IPLTMSB:
		      case R_IA64_IPLTLSB:
			if (!FUNC1(rela, i))
				ret++;
			break;
		}
	}
	return ret;
}