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
 int BITS_IN_COMMAND ; 
 int EEPROM_DATO ; 
 int EEPROM_ECLK ; 
 int FUNC0 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline void FUNC3(unsigned int *ctrl, unsigned cmd, unsigned reg)
{
	unsigned short ser_cmd;
	int i;

	ser_cmd = cmd | (reg << (16 - BITS_IN_COMMAND));
	for (i = 0; i < BITS_IN_COMMAND; i++) {
		if (ser_cmd & (1<<15))	/* if high order bit set */
			FUNC1(FUNC0(ctrl) | EEPROM_DATO, ctrl);
		else
			FUNC1(FUNC0(ctrl) & ~EEPROM_DATO, ctrl);
		FUNC1(FUNC0(ctrl) & ~EEPROM_ECLK, ctrl);
		FUNC2();
		FUNC1(FUNC0(ctrl) | EEPROM_ECLK, ctrl);
		FUNC2();
		ser_cmd <<= 1;
	}
	/* see data sheet timing diagram */
	FUNC1(FUNC0(ctrl) & ~EEPROM_DATO, ctrl);
}