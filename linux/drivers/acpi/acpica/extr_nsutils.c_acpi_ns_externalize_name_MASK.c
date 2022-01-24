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
typedef  size_t u8 ;
typedef  size_t u32 ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_size ;

/* Variables and functions */
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const) ; 
 scalar_t__ ACPI_NAMESEG_SIZE ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_BAD_PATHNAME ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
#define  AML_DUAL_NAME_PREFIX 131 
#define  AML_MULTI_NAME_PREFIX 130 
#define  AML_PARENT_PREFIX 129 
#define  AML_ROOT_PREFIX 128 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  ns_externalize_name ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC7(u32 internal_name_length,
			 const char *internal_name,
			 u32 * converted_name_length, char **converted_name)
{
	u32 names_index = 0;
	u32 num_segments = 0;
	u32 required_length;
	u32 prefix_length = 0;
	u32 i = 0;
	u32 j = 0;

	FUNC3(ns_externalize_name);

	if (!internal_name_length || !internal_name || !converted_name) {
		FUNC6(AE_BAD_PARAMETER);
	}

	/* Check for a prefix (one '\' | one or more '^') */

	switch (internal_name[0]) {
	case AML_ROOT_PREFIX:

		prefix_length = 1;
		break;

	case AML_PARENT_PREFIX:

		for (i = 0; i < internal_name_length; i++) {
			if (FUNC4(internal_name[i])) {
				prefix_length = i + 1;
			} else {
				break;
			}
		}

		if (i == internal_name_length) {
			prefix_length = i;
		}

		break;

	default:

		break;
	}

	/*
	 * Check for object names. Note that there could be 0-255 of these
	 * 4-byte elements.
	 */
	if (prefix_length < internal_name_length) {
		switch (internal_name[prefix_length]) {
		case AML_MULTI_NAME_PREFIX:

			/* <count> 4-byte names */

			names_index = prefix_length + 2;
			num_segments = (u8)
			    internal_name[(acpi_size)prefix_length + 1];
			break;

		case AML_DUAL_NAME_PREFIX:

			/* Two 4-byte names */

			names_index = prefix_length + 1;
			num_segments = 2;
			break;

		case 0:

			/* null_name */

			names_index = 0;
			num_segments = 0;
			break;

		default:

			/* one 4-byte name */

			names_index = prefix_length;
			num_segments = 1;
			break;
		}
	}

	/*
	 * Calculate the length of converted_name, which equals the length
	 * of the prefix, length of all object names, length of any required
	 * punctuation ('.') between object names, plus the NULL terminator.
	 */
	required_length = prefix_length + (4 * num_segments) +
	    ((num_segments > 0) ? (num_segments - 1) : 0) + 1;

	/*
	 * Check to see if we're still in bounds. If not, there's a problem
	 * with internal_name (invalid format).
	 */
	if (required_length > internal_name_length) {
		FUNC2((AE_INFO, "Invalid internal name"));
		FUNC6(AE_BAD_PATHNAME);
	}

	/* Build the converted_name */

	*converted_name = FUNC0(required_length);
	if (!(*converted_name)) {
		FUNC6(AE_NO_MEMORY);
	}

	j = 0;

	for (i = 0; i < prefix_length; i++) {
		(*converted_name)[j++] = internal_name[i];
	}

	if (num_segments > 0) {
		for (i = 0; i < num_segments; i++) {
			if (i > 0) {
				(*converted_name)[j++] = '.';
			}

			/* Copy and validate the 4-char name segment */

			FUNC1(&(*converted_name)[j],
					  &internal_name[names_index]);
			FUNC5(&(*converted_name)[j]);

			j += ACPI_NAMESEG_SIZE;
			names_index += ACPI_NAMESEG_SIZE;
		}
	}

	if (converted_name_length) {
		*converted_name_length = (u32) required_length;
	}

	FUNC6(AE_OK);
}