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
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  AE_ERROR ; 
 int /*<<< orphan*/  AE_OK ; 
 int FUNC0 (char*,size_t) ; 
 scalar_t__ acpi_in_debugger ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 size_t FUNC2 (char*) ; 

acpi_status FUNC3(char *buffer, u32 buffer_length, u32 *bytes_read)
{
#ifdef ENABLE_DEBUGGER
	if (acpi_in_debugger) {
		u32 chars;

		kdb_read(buffer, buffer_length);

		/* remove the CR kdb includes */
		chars = strlen(buffer) - 1;
		buffer[chars] = '\0';
	}
#else
	int ret;

	ret = FUNC0(buffer, buffer_length);
	if (ret < 0)
		return AE_ERROR;
	if (bytes_read)
		*bytes_read = ret;
#endif

	return AE_OK;
}