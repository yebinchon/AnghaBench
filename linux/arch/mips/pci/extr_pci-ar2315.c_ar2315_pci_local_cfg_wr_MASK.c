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
struct ar2315_pci_ctrl {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ar2315_pci_ctrl*,unsigned int,int,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int FUNC1(struct ar2315_pci_ctrl *apc,
					  unsigned devfn, int where, u32 val)
{
	return FUNC0(apc, devfn, where, sizeof(u32), &val,
				     true);
}