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
struct __prci_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRCI_CORECLKSEL_CORECLKSEL_MASK ; 
 int /*<<< orphan*/  PRCI_CORECLKSEL_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct __prci_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct __prci_data*) ; 

__attribute__((used)) static void FUNC2(struct __prci_data *pd)
{
	u32 r;

	r = FUNC0(pd, PRCI_CORECLKSEL_OFFSET);
	r &= ~PRCI_CORECLKSEL_CORECLKSEL_MASK;
	FUNC1(r, PRCI_CORECLKSEL_OFFSET, pd);

	r = FUNC0(pd, PRCI_CORECLKSEL_OFFSET); /* barrier */
}