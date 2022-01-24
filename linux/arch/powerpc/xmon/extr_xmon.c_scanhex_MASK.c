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
typedef  int /*<<< orphan*/  regname ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  N_PTREGS ; 
 int /*<<< orphan*/  bus_error_jmp ; 
 int catch_memory_errors ; 
 int FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 unsigned long FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  regnames ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int termch ; 
 char* tmpstr ; 
 int /*<<< orphan*/ * xmon_regs ; 

int
FUNC10(unsigned long *vp)
{
	int c, d;
	unsigned long v;

	c = FUNC8();
	if (c == '%') {
		/* parse register name */
		char regname[8];
		int i;

		for (i = 0; i < sizeof(regname) - 1; ++i) {
			c = FUNC1();
			if (!FUNC2(c)) {
				termch = c;
				break;
			}
			regname[i] = c;
		}
		regname[i] = 0;
		i = FUNC5(regnames, N_PTREGS, regname);
		if (i < 0) {
			FUNC6("invalid register name '%%%s'\n", regname);
			return 0;
		}
		if (xmon_regs == NULL) {
			FUNC6("regs not available\n");
			return 0;
		}
		*vp = ((unsigned long *)xmon_regs)[i];
		return 1;
	}

	/* skip leading "0x" if any */

	if (c == '0') {
		c = FUNC1();
		if (c == 'x') {
			c = FUNC1();
		} else {
			d = FUNC0(c);
			if (d == EOF) {
				termch = c;
				*vp = 0;
				return 1;
			}
		}
	} else if (c == '$') {
		int i;
		for (i=0; i<63; i++) {
			c = FUNC1();
			if (FUNC3(c) || c == '\0') {
				termch = c;
				break;
			}
			tmpstr[i] = c;
		}
		tmpstr[i++] = 0;
		*vp = 0;
		if (FUNC7(bus_error_jmp) == 0) {
			catch_memory_errors = 1;
			FUNC9();
			*vp = FUNC4(tmpstr);
			FUNC9();
		}
		catch_memory_errors = 0;
		if (!(*vp)) {
			FUNC6("unknown symbol '%s'\n", tmpstr);
			return 0;
		}
		return 1;
	}

	d = FUNC0(c);
	if (d == EOF) {
		termch = c;
		return 0;
	}
	v = 0;
	do {
		v = (v << 4) + d;
		c = FUNC1();
		d = FUNC0(c);
	} while (d != EOF);
	termch = c;
	*vp = v;
	return 1;
}