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
 int /*<<< orphan*/  GDROM_COM_IDDEV ; 
 int /*<<< orphan*/  GDROM_DATA_REG ; 
 int /*<<< orphan*/  GDROM_STATUSCOMMAND_REG ; 
 short FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(void *buf)
{
	int c;
	short *data = buf;
	/* If the device won't clear it has probably
	* been hit by a serious failure - but we'll
	* try to return a sense key even so */
	if (!FUNC4()) {
		FUNC2(NULL);
		return;
	}
	FUNC1(GDROM_COM_IDDEV, GDROM_STATUSCOMMAND_REG);
	if (!FUNC3()) {
		FUNC2(NULL);
		return;
	}
	/* now read in the data */
	for (c = 0; c < 40; c++)
		data[c] = FUNC0(GDROM_DATA_REG);
}