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
 int /*<<< orphan*/  Eflag ; 
 int /*<<< orphan*/  Sflag ; 
 int /*<<< orphan*/  alist ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  as ; 
 int /*<<< orphan*/  av ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cflag ; 
 int FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpp ; 
 int /*<<< orphan*/  errcnt ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * llist ; 
 char* outfile ; 
 int /*<<< orphan*/  plist ; 
 int FUNC8 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * suffixes ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(char *name, char *base) {
	int status = 0;
	static char *stemp, *itemp;

	if (base == 0)
		base = FUNC1(name);
	switch (FUNC8(name, suffixes, 4)) {
	case 0:	/* C source files */
		FUNC4(cpp, plist, FUNC0(name, 0), 0);
		if (Eflag) {
			status = FUNC2(av);
			break;
		}
		if (itemp == NULL)
			itemp = FUNC9(FUNC7(suffixes[1]));
		FUNC4(cpp, plist, FUNC0(name, 0), FUNC0(itemp, 0));
		status = FUNC2(av);
		if (status == 0)
			return FUNC10(itemp, base);
		break;
	case 1:	/* preprocessed source files */
		if (Eflag)
			break;
		if (Sflag)
			status = FUNC3(name, outfile ? outfile : FUNC5(base, FUNC7(suffixes[2])));
		else if ((status = FUNC3(name, stemp?stemp:(stemp=FUNC9(FUNC7(suffixes[2]))))) == 0)
			return FUNC10(stemp, base);
		break;
	case 2:	/* assembly language files */
		if (Eflag)
			break;
		if (!Sflag) {
			char *ofile;
			if (cflag && outfile)
				ofile = outfile;
			else if (cflag)
				ofile = FUNC5(base, FUNC7(suffixes[3]));
			else
				ofile = FUNC9(FUNC7(suffixes[3]));
			FUNC4(as, alist, FUNC0(name, 0), FUNC0(ofile, 0));
			status = FUNC2(av);
			if (!FUNC6(ofile, llist[1]))
				llist[1] = FUNC0(ofile, llist[1]);
		}
		break;
	case 3:	/* object files */
		if (!FUNC6(name, llist[1]))
			llist[1] = FUNC0(name, llist[1]);
		break;
	default:
		if (Eflag) {
			FUNC4(cpp, plist, FUNC0(name, 0), 0);
			status = FUNC2(av);
		}
		llist[1] = FUNC0(name, llist[1]);
		break;
	}
	if (status)
		errcnt++;
	return status;
}