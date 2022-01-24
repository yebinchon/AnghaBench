#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int p; int /*<<< orphan*/  type; } ;
struct idt_data {unsigned int vector; TYPE_1__ bits; int /*<<< orphan*/  segment; void const* addr; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GATE_INTERRUPT ; 
 int /*<<< orphan*/  __KERNEL_CS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct idt_data*,int,int) ; 
 int /*<<< orphan*/  idt_table ; 
 int /*<<< orphan*/  FUNC2 (struct idt_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(unsigned int n, const void *addr)
{
	struct idt_data data;

	FUNC0(n > 0xFF);

	FUNC2(&data, 0, sizeof(data));
	data.vector	= n;
	data.addr	= addr;
	data.segment	= __KERNEL_CS;
	data.bits.type	= GATE_INTERRUPT;
	data.bits.p	= 1;

	FUNC1(idt_table, &data, 1, false);
}