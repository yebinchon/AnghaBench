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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ acpi_rsdesc_size ;

/* Variables and functions */
 scalar_t__ ACPI_RESOURCE_NAME_END_TAG ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__,...) ; 
 scalar_t__ FUNC1 (scalar_t__*) ; 
 scalar_t__ FUNC2 (scalar_t__*) ; 
 scalar_t__ FUNC3 (scalar_t__*,scalar_t__*,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(u8 *aml1_buffer,
			      acpi_rsdesc_size aml1_buffer_length,
			      u8 *aml2_buffer,
			      acpi_rsdesc_size aml2_buffer_length)
{
	u8 *aml1;
	u8 *aml2;
	u8 *aml1_end;
	u8 *aml2_end;
	acpi_rsdesc_size aml1_length;
	acpi_rsdesc_size aml2_length;
	acpi_rsdesc_size offset = 0;
	u8 resource_type;
	u32 count = 0;
	u32 i;

	/* Compare overall buffer sizes (may be different due to size rounding) */

	if (aml1_buffer_length != aml2_buffer_length) {
		FUNC0("**** Buffer length mismatch in converted "
			       "AML: Original %X, New %X ****\n",
			       aml1_buffer_length, aml2_buffer_length);
	}

	aml1 = aml1_buffer;
	aml2 = aml2_buffer;
	aml1_end = aml1_buffer + aml1_buffer_length;
	aml2_end = aml2_buffer + aml2_buffer_length;

	/* Walk the descriptor lists, comparing each descriptor */

	while ((aml1 < aml1_end) && (aml2 < aml2_end)) {

		/* Get the lengths of each descriptor */

		aml1_length = FUNC1(aml1);
		aml2_length = FUNC1(aml2);
		resource_type = FUNC2(aml1);

		/* Check for descriptor length match */

		if (aml1_length != aml2_length) {
			FUNC0
			    ("**** Length mismatch in descriptor [%.2X] type %2.2X, "
			     "Offset %8.8X Len1 %X, Len2 %X ****\n", count,
			     resource_type, offset, aml1_length, aml2_length);
		}

		/* Check for descriptor byte match */

		else if (FUNC3(aml1, aml2, aml1_length)) {
			FUNC0
			    ("**** Data mismatch in descriptor [%.2X] type %2.2X, "
			     "Offset %8.8X ****\n", count, resource_type,
			     offset);

			for (i = 0; i < aml1_length; i++) {
				if (aml1[i] != aml2[i]) {
					FUNC0
					    ("Mismatch at byte offset %.2X: is %2.2X, "
					     "should be %2.2X\n", i, aml2[i],
					     aml1[i]);
				}
			}
		}

		/* Exit on end_tag descriptor */

		if (resource_type == ACPI_RESOURCE_NAME_END_TAG) {
			return;
		}

		/* Point to next descriptor in each buffer */

		count++;
		offset += aml1_length;
		aml1 += aml1_length;
		aml2 += aml2_length;
	}
}