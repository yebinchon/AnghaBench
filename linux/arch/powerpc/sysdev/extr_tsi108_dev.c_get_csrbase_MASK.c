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
struct device_node {int dummy; } ;
typedef  int phys_addr_t ;

/* Variables and functions */
 struct device_node* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC1 (struct device_node*,char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int FUNC3 (struct device_node*,void const*) ; 
 int tsi108_csr_base ; 

phys_addr_t FUNC4(void)
{
	struct device_node *tsi;

	if (tsi108_csr_base != -1)
		return tsi108_csr_base;

	tsi = FUNC0(NULL, "tsi-bridge");
	if (tsi) {
		unsigned int size;
		const void *prop = FUNC1(tsi, "reg", &size);
		tsi108_csr_base = FUNC3(tsi, prop);
		FUNC2(tsi);
	}
	return tsi108_csr_base;
}