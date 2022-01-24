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
 scalar_t__ Eflag ; 
 scalar_t__ Sflag ; 
 int /*<<< orphan*/  alist ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ cflag ; 
 int /*<<< orphan*/  clist ; 
 char** com ; 
 char* FUNC2 (char*,char*) ; 
 int /*<<< orphan*/ * cpp ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  ilist ; 
 int /*<<< orphan*/ * include ; 
 int /*<<< orphan*/ * llist ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  plist ; 
 char* progname ; 
 char* rcsid ; 
 char* FUNC8 (char*,char,char) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC11 (char*,char*) ; 
 int /*<<< orphan*/ * suffixes ; 
 char* tempdir ; 
 int /*<<< orphan*/  verbose ; 

__attribute__((used)) static void FUNC12(char *arg) {
	switch (arg[1]) {	/* multi-character options */
	case 'W':	/* -Wxarg */
		if (arg[2] && arg[3])
			switch (arg[2]) {
			case 'o':
				if (FUNC7(&arg[3]))
					return;
				break;
			case 'p':
				plist = FUNC0(&arg[3], plist);
				return;
			case 'f':
				if (FUNC9(&arg[3], "-C") || FUNC7("-b")) {
					clist = FUNC0(&arg[3], clist);
					return;
				}
				break; /* and fall through */
			case 'a':
				alist = FUNC0(&arg[3], alist);
				return;
			case 'l':
				llist[0] = FUNC0(&arg[3], llist[0]);
				return;
			}
		FUNC5(stderr, "%s: %s ignored\n", progname, arg);
		return;
	case 'd':	/* -dn */
		arg[1] = 's';
		clist = FUNC0(arg, clist);
		return;
	case 't':	/* -t -tname -tempdir=dir */
		if (FUNC10(arg, "-tempdir=", 9) == 0)
			tempdir = arg + 9;
		else
			clist = FUNC0(arg, clist);
		return;
	case 'p':	/* -p -pg */
		if (FUNC7(arg))
			clist = FUNC0(arg, clist);
		else
			FUNC5(stderr, "%s: %s ignored\n", progname, arg);
		return;
	case 'D':	/* -Dname -Dname=def */
	case 'U':	/* -Uname */
	case 'I':	/* -Idir */
		plist = FUNC0(arg, plist);
		return;
	case 'B':	/* -Bdir -Bstatic -Bdynamic */
#ifdef sparc
		if (strcmp(arg, "-Bstatic") == 0 || strcmp(arg, "-Bdynamic") == 0)
			llist[1] = append(arg, llist[1]);
		else
#endif	
		{
		static char *path;
		if (path)
			FUNC3("-B overwrites earlier option", 0);
		path = arg + 2;
		if (FUNC11(com[1], "win32") != NULL)
			com[0] = FUNC2(FUNC8(path, '/', '\\'), FUNC2("rcc", FUNC4(suffixes[4])));
		else
			com[0] = FUNC2(path, "rcc");
		if (path[0] == 0)
			FUNC3("missing directory in -B option", 0);
		}
		return;
	case 'h':
		if (FUNC9(arg, "-help") == 0) {
			static int printed = 0;
	case '?':
			if (!printed)
				FUNC6();
			printed = 1;
			return;
		}
#ifdef linux
	case 's':
		if (FUNC9(arg,"-static") == 0) {
			if (!FUNC7(arg))
				FUNC5(stderr, "%s: %s ignored\n", progname, arg);
			return;
		}
#endif         
	}
	if (arg[2] == 0)
		switch (arg[1]) {	/* single-character options */
		case 'S':
			Sflag++;
			return;
		case 'O':
			FUNC5(stderr, "%s: %s ignored\n", progname, arg);
			return;
		case 'A': case 'n': case 'w': case 'P':
			clist = FUNC0(arg, clist);
			return;
		case 'g': case 'b':
			if (FUNC7(arg))
				clist = FUNC0(arg[1] == 'g' ? "-g2" : arg, clist);
			else
				FUNC5(stderr, "%s: %s ignored\n", progname, arg);
			return;
		case 'G':
			if (FUNC7(arg)) {
				clist = FUNC0("-g3", clist);
				llist[0] = FUNC0("-N", llist[0]);
			} else
				FUNC5(stderr, "%s: %s ignored\n", progname, arg);
			return;
		case 'E':
			Eflag++;
			return;
		case 'c':
			cflag++;
			return;
		case 'N':
			if (FUNC9(FUNC1(cpp[0]), "gcc-cpp") == 0)
				plist = FUNC0("-nostdinc", plist);
			include[0] = 0;
			ilist = 0;
			return;
		case 'v':
			if (verbose++ == 0) {
				if (FUNC9(FUNC1(cpp[0]), "gcc-cpp") == 0)
					plist = FUNC0(arg, plist);
				clist = FUNC0(arg, clist);
				FUNC5(stderr, "%s %s\n", progname, rcsid);
			}
			return;
		}
	if (cflag || Sflag || Eflag)
		FUNC5(stderr, "%s: %s ignored\n", progname, arg);
	else
		llist[1] = FUNC0(arg, llist[1]);
}