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

/* Variables and functions */
 int /*<<< orphan*/  GDROM_ALTSTATUS_REG ; 
 int /*<<< orphan*/  GDROM_BCH_REG ; 
 int /*<<< orphan*/  GDROM_BCL_REG ; 
 int GDROM_COM_PACKET ; 
 int /*<<< orphan*/  GDROM_DATA_REG ; 
 unsigned long GDROM_DEFAULT_TIMEOUT ; 
 int /*<<< orphan*/  GDROM_ERROR_REG ; 
 int /*<<< orphan*/  GDROM_INTSEC_REG ; 
 int /*<<< orphan*/  GDROM_SECNUM_REG ; 
 int /*<<< orphan*/  GDROM_STATUSCOMMAND_REG ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,short*,int) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC7(void *spi_string, int buflen)
{
	short *cmd = spi_string;
	unsigned long timeout;

	/* ensure IRQ_WAIT is set */
	FUNC0(0x08, GDROM_ALTSTATUS_REG);
	/* specify how many bytes we expect back */
	FUNC0(buflen & 0xFF, GDROM_BCL_REG);
	FUNC0((buflen >> 8) & 0xFF, GDROM_BCH_REG);
	/* other parameters */
	FUNC0(0, GDROM_INTSEC_REG);
	FUNC0(0, GDROM_SECNUM_REG);
	FUNC0(0, GDROM_ERROR_REG);
	/* Wait until we can go */
	if (!FUNC4()) {
		FUNC3(NULL);
		return;
	}
	timeout = jiffies + GDROM_DEFAULT_TIMEOUT;
	FUNC0(GDROM_COM_PACKET, GDROM_STATUSCOMMAND_REG);
	while (!FUNC2() && FUNC6(jiffies, timeout))
		FUNC1();
	if (!FUNC6(jiffies, timeout + 1)) {
		FUNC3(NULL);
		return;
	}
	FUNC5(GDROM_DATA_REG, cmd, 6);
}