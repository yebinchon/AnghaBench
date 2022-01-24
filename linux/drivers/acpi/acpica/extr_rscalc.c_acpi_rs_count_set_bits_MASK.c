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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static u8 FUNC1(u16 bit_field)
{
	u8 bits_set;

	FUNC0();

	for (bits_set = 0; bit_field; bits_set++) {

		/* Zero the least significant bit that is set */

		bit_field &= (u16) (bit_field - 1);
	}

	return (bits_set);
}