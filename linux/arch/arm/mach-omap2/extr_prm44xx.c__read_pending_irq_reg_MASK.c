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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP4430_PRM_OCP_SOCKET_INST ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u32 FUNC1(u16 irqen_offs, u16 irqst_offs)
{
	u32 mask, st;

	/* XXX read mask from RAM? */
	mask = FUNC0(OMAP4430_PRM_OCP_SOCKET_INST,
				       irqen_offs);
	st = FUNC0(OMAP4430_PRM_OCP_SOCKET_INST, irqst_offs);

	return mask & st;
}