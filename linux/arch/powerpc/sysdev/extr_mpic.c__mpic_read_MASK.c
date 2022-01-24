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
struct mpic_reg_bank {int /*<<< orphan*/  base; int /*<<< orphan*/  dhost; } ;
typedef  enum mpic_reg_type { ____Placeholder_mpic_reg_type } mpic_reg_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  mpic_access_dcr 130 
#define  mpic_access_mmio_be 129 
#define  mpic_access_mmio_le 128 

__attribute__((used)) static inline u32 FUNC3(enum mpic_reg_type type,
			     struct mpic_reg_bank *rb,
			     unsigned int reg)
{
	switch(type) {
#ifdef CONFIG_PPC_DCR
	case mpic_access_dcr:
		return dcr_read(rb->dhost, reg);
#endif
	case mpic_access_mmio_be:
		return FUNC1(rb->base + (reg >> 2));
	case mpic_access_mmio_le:
	default:
		return FUNC2(rb->base + (reg >> 2));
	}
}