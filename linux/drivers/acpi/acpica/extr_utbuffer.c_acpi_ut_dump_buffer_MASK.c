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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  size_t acpi_size ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *) ; 
#define  DB_BYTE_DISPLAY 131 
#define  DB_DWORD_DISPLAY 130 
#define  DB_QWORD_DISPLAY 129 
#define  DB_WORD_DISPLAY 128 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(u8 *buffer, u32 count, u32 display, u32 base_offset)
{
	u32 i = 0;
	u32 j;
	u32 temp32;
	u8 buf_char;

	if (!buffer) {
		FUNC2("Null Buffer Pointer in DumpBuffer!\n");
		return;
	}

	if ((count < 4) || (count & 0x01)) {
		display = DB_BYTE_DISPLAY;
	}

	/* Nasty little dump buffer routine! */

	while (i < count) {

		/* Print current offset */

		FUNC2("%8.4X: ", (base_offset + i));

		/* Print 16 hex chars */

		for (j = 0; j < 16;) {
			if (i + j >= count) {

				/* Dump fill spaces */

				FUNC2("%*s", ((display * 2) + 1), " ");
				j += display;
				continue;
			}

			switch (display) {
			case DB_BYTE_DISPLAY:
			default:	/* Default is BYTE display */

				FUNC2("%02X ",
					       buffer[(acpi_size)i + j]);
				break;

			case DB_WORD_DISPLAY:

				FUNC0(&temp32,
						   &buffer[(acpi_size)i + j]);
				FUNC2("%04X ", temp32);
				break;

			case DB_DWORD_DISPLAY:

				FUNC1(&temp32,
						   &buffer[(acpi_size)i + j]);
				FUNC2("%08X ", temp32);
				break;

			case DB_QWORD_DISPLAY:

				FUNC1(&temp32,
						   &buffer[(acpi_size)i + j]);
				FUNC2("%08X", temp32);

				FUNC1(&temp32,
						   &buffer[(acpi_size)i + j +
							   4]);
				FUNC2("%08X ", temp32);
				break;
			}

			j += display;
		}

		/*
		 * Print the ASCII equivalent characters but watch out for the bad
		 * unprintable ones (printable chars are 0x20 through 0x7E)
		 */
		FUNC2(" ");
		for (j = 0; j < 16; j++) {
			if (i + j >= count) {
				FUNC2("\n");
				return;
			}

			/*
			 * Add comment characters so rest of line is ignored when
			 * compiled
			 */
			if (j == 0) {
				FUNC2("// ");
			}

			buf_char = buffer[(acpi_size)i + j];
			if (FUNC3(buf_char)) {
				FUNC2("%c", buf_char);
			} else {
				FUNC2(".");
			}
		}

		/* Done with that line. */

		FUNC2("\n");
		i += 16;
	}

	return;
}