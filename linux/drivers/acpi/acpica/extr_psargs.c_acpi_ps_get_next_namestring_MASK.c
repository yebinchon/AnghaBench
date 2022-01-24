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
struct acpi_parse_state {int* aml; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int ACPI_NAMESEG_SIZE ; 
#define  AML_DUAL_NAME_PREFIX 129 
#define  AML_MULTI_NAME_PREFIX 128 
 int /*<<< orphan*/  ps_get_next_namestring ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

char *FUNC4(struct acpi_parse_state *parser_state)
{
	u8 *start = parser_state->aml;
	u8 *end = parser_state->aml;

	FUNC0(ps_get_next_namestring);

	/* Point past any namestring prefix characters (backslash or carat) */

	while (FUNC2(*end) || FUNC1(*end)) {
		end++;
	}

	/* Decode the path prefix character */

	switch (*end) {
	case 0:

		/* null_name */

		if (end == start) {
			start = NULL;
		}
		end++;
		break;

	case AML_DUAL_NAME_PREFIX:

		/* Two name segments */

		end += 1 + (2 * ACPI_NAMESEG_SIZE);
		break;

	case AML_MULTI_NAME_PREFIX:

		/* Multiple name segments, 4 chars each, count in next byte */

		end += 2 + (*(end + 1) * ACPI_NAMESEG_SIZE);
		break;

	default:

		/* Single name segment */

		end += ACPI_NAMESEG_SIZE;
		break;
	}

	parser_state->aml = end;
	FUNC3((char *)start);
}