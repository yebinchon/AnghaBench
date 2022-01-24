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
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  AE_BAD_HEX_CONSTANT ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 

acpi_status FUNC2(int hex_char, u8 *return_value)
{
	u8 value;

	/* Digit must be ascii [0-9a-fA-F] */

	if (!FUNC0(hex_char)) {
		return (AE_BAD_HEX_CONSTANT);
	}

	if (hex_char <= 0x39) {
		value = (u8)(hex_char - 0x30);
	} else {
		value = (u8)(FUNC1(hex_char) - 0x37);
	}

	*return_value = value;
	return (AE_OK);
}