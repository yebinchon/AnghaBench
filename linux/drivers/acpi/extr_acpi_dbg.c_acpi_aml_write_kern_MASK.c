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
struct circ_buf {char* buf; size_t head; } ;
struct TYPE_2__ {struct circ_buf out_crc; } ;

/* Variables and functions */
 int ACPI_AML_BUF_SIZE ; 
 int /*<<< orphan*/  ACPI_AML_OUT_KERN ; 
 TYPE_1__ acpi_aml_io ; 
 int FUNC0 (struct circ_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct circ_buf*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(const char *buf, int len)
{
	int ret;
	struct circ_buf *crc = &acpi_aml_io.out_crc;
	int n;
	char *p;

	ret = FUNC0(crc, ACPI_AML_OUT_KERN);
	if (ret < 0)
		return ret;
	/* sync tail before inserting logs */
	FUNC5();
	p = &crc->buf[crc->head];
	n = FUNC4(len, FUNC2(crc));
	FUNC3(p, buf, n);
	/* sync head after inserting logs */
	FUNC6();
	crc->head = (crc->head + n) & (ACPI_AML_BUF_SIZE - 1);
	FUNC1(ACPI_AML_OUT_KERN, true);
	return n;
}