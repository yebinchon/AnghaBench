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

/* Variables and functions */
 unsigned int BIT_CLR ; 
 size_t BIT_MSK ; 
 unsigned int BIT_SET ; 
 unsigned int LCD_BITS ; 
 int /*<<< orphan*/  bits ; 
 int*** lcd_bits ; 
 scalar_t__ FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(unsigned int port, int *val)
{
	unsigned int bit, state;

	for (bit = 0; bit < LCD_BITS; bit++) {
		state = FUNC0(bit, bits) ? BIT_SET : BIT_CLR;
		*val &= lcd_bits[port][bit][BIT_MSK];
		*val |= lcd_bits[port][bit][state];
	}
}