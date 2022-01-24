#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct circ_buf {char* buf; size_t tail; } ;
struct TYPE_2__ {struct circ_buf in_crc; } ;

/* Variables and functions */
 int ACPI_AML_BUF_SIZE ; 
 int /*<<< orphan*/  ACPI_AML_IN_KERN ; 
 TYPE_1__ acpi_aml_io ; 
 int FUNC0 (struct circ_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(void)
{
	int ret;
	struct circ_buf *crc = &acpi_aml_io.in_crc;
	char *p;

	ret = FUNC0(crc, ACPI_AML_IN_KERN);
	if (ret < 0)
		return ret;
	/* sync head before removing cmds */
	FUNC3();
	p = &crc->buf[crc->tail];
	ret = (int)*p;
	/* sync tail before inserting cmds */
	FUNC2();
	crc->tail = (crc->tail + 1) & (ACPI_AML_BUF_SIZE - 1);
	FUNC1(ACPI_AML_IN_KERN, true);
	return ret;
}