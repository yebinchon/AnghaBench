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
typedef  int u8 ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  AE_BAD_HEX_CONSTANT ; 
 int /*<<< orphan*/  AE_OK ; 
 int FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

acpi_status FUNC2(char *two_ascii_chars, u8 *return_byte)
{

	/* Both ASCII characters must be valid hex digits */

	if (!FUNC1((int)two_ascii_chars[0]) ||
	    !FUNC1((int)two_ascii_chars[1])) {
		return (AE_BAD_HEX_CONSTANT);
	}

	*return_byte =
	    FUNC0(two_ascii_chars[1]) |
	    (FUNC0(two_ascii_chars[0]) << 4);

	return (AE_OK);
}