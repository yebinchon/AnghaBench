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
struct mp_chip_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mp_chip_data*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(struct mp_chip_data *data,
				int node, int apic, int pin)
{
	if (FUNC0(data, node, apic, pin))
		FUNC1("IO-APIC: failed to add irq-pin. Can not proceed\n");
}