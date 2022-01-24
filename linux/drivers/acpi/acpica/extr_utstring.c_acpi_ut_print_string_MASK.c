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
typedef  size_t u32 ;
typedef  size_t u16 ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(char *string, u16 max_length)
{
	u32 i;

	if (!string) {
		FUNC0("<\"NULL STRING PTR\">");
		return;
	}

	FUNC0("\"");
	for (i = 0; (i < max_length) && string[i]; i++) {

		/* Escape sequences */

		switch (string[i]) {
		case 0x07:

			FUNC0("\\a");	/* BELL */
			break;

		case 0x08:

			FUNC0("\\b");	/* BACKSPACE */
			break;

		case 0x0C:

			FUNC0("\\f");	/* FORMFEED */
			break;

		case 0x0A:

			FUNC0("\\n");	/* LINEFEED */
			break;

		case 0x0D:

			FUNC0("\\r");	/* CARRIAGE RETURN */
			break;

		case 0x09:

			FUNC0("\\t");	/* HORIZONTAL TAB */
			break;

		case 0x0B:

			FUNC0("\\v");	/* VERTICAL TAB */
			break;

		case '\'':	/* Single Quote */
		case '\"':	/* Double Quote */
		case '\\':	/* Backslash */

			FUNC0("\\%c", (int)string[i]);
			break;

		default:

			/* Check for printable character or hex escape */

			if (FUNC1((int)string[i])) {
				/* This is a normal character */

				FUNC0("%c", (int)string[i]);
			} else {
				/* All others will be Hex escapes */

				FUNC0("\\x%2.2X", (s32)string[i]);
			}
			break;
		}
	}

	FUNC0("\"");

	if (i == max_length && string[i]) {
		FUNC0("...");
	}
}