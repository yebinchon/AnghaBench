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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ s64 ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int ACPI_FORMAT_LEFT ; 
 int ACPI_FORMAT_PREFIX ; 
 int ACPI_FORMAT_SIGN ; 
 int ACPI_FORMAT_SIGN_PLUS ; 
 int ACPI_FORMAT_SIGN_PLUS_SPACE ; 
 int ACPI_FORMAT_UPPER ; 
 int ACPI_FORMAT_ZERO ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 int FALSE ; 
 int TRUE ; 
 char* FUNC1 (char*,char*,char) ; 
 char* FUNC2 (char*,scalar_t__,int,int) ; 

__attribute__((used)) static char *FUNC3(char *string,
				   char *end,
				   u64 number,
				   u8 base, s32 width, s32 precision, u8 type)
{
	char *pos;
	char sign;
	char zero;
	u8 need_prefix;
	u8 upper;
	s32 i;
	char reversed_string[66];

	/* Parameter validation */

	if (base < 2 || base > 16) {
		return (NULL);
	}

	if (type & ACPI_FORMAT_LEFT) {
		type &= ~ACPI_FORMAT_ZERO;
	}

	need_prefix = ((type & ACPI_FORMAT_PREFIX)
		       && base != 10) ? TRUE : FALSE;
	upper = (type & ACPI_FORMAT_UPPER) ? TRUE : FALSE;
	zero = (type & ACPI_FORMAT_ZERO) ? '0' : ' ';

	/* Calculate size according to sign and prefix */

	sign = '\0';
	if (type & ACPI_FORMAT_SIGN) {
		if ((s64)number < 0) {
			sign = '-';
			number = -(s64)number;
			width--;
		} else if (type & ACPI_FORMAT_SIGN_PLUS) {
			sign = '+';
			width--;
		} else if (type & ACPI_FORMAT_SIGN_PLUS_SPACE) {
			sign = ' ';
			width--;
		}
	}
	if (need_prefix) {
		width--;
		if (base == 16) {
			width--;
		}
	}

	/* Generate full string in reverse order */

	pos = FUNC2(reversed_string, number, base, upper);
	i = (s32)FUNC0(pos, reversed_string);

	/* Printing 100 using %2d gives "100", not "00" */

	if (i > precision) {
		precision = i;
	}

	width -= precision;

	/* Output the string */

	if (!(type & (ACPI_FORMAT_ZERO | ACPI_FORMAT_LEFT))) {
		while (--width >= 0) {
			string = FUNC1(string, end, ' ');
		}
	}
	if (sign) {
		string = FUNC1(string, end, sign);
	}
	if (need_prefix) {
		string = FUNC1(string, end, '0');
		if (base == 16) {
			string =
			    FUNC1(string, end,
							upper ? 'X' : 'x');
		}
	}
	if (!(type & ACPI_FORMAT_LEFT)) {
		while (--width >= 0) {
			string = FUNC1(string, end, zero);
		}
	}

	while (i <= --precision) {
		string = FUNC1(string, end, '0');
	}
	while (--i >= 0) {
		string = FUNC1(string, end,
						     reversed_string[i]);
	}
	while (--width >= 0) {
		string = FUNC1(string, end, ' ');
	}

	return (string);
}