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
struct rtl8366_smi {unsigned int gpio_sda; unsigned int gpio_sck; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8366_smi*) ; 

__attribute__((used)) static void FUNC2(struct rtl8366_smi *smi, u32 data, u32 len)
{
	unsigned int sda = smi->gpio_sda;
	unsigned int sck = smi->gpio_sck;

	for (; len > 0; len--) {
		FUNC1(smi);

		/* prepare data */
		FUNC0(sda, !!(data & ( 1 << (len - 1))));
		FUNC1(smi);

		/* clocking */
		FUNC0(sck, 1);
		FUNC1(smi);
		FUNC0(sck, 0);
	}
}