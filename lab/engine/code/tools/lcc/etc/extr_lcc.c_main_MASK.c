#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* str; struct TYPE_3__* link; } ;
typedef  TYPE_1__* List ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  Eflag ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 scalar_t__ SIG_IGN ; 
 scalar_t__ Sflag ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ac ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  av ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ cflag ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 char* FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errcnt ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,char*,...) ; 
 char* FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 TYPE_1__* ilist ; 
 char** include ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ interrupt ; 
 int /*<<< orphan*/  ld ; 
 scalar_t__* llist ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 char* outfile ; 
 scalar_t__ plist ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rmlist ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC20 (char*,char*) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*) ; 
 int FUNC22 (char*) ; 
 scalar_t__ FUNC23 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * suffixes ; 
 char* tempdir ; 

int FUNC24(int argc, char *argv[]) {
	int i, j, nf;

	progname = argv[0];

	FUNC0( progname );

	ac = argc + 50;
	av = FUNC1(ac*sizeof(char *));
	if (FUNC19(SIGINT, SIG_IGN) != SIG_IGN)
		FUNC19(SIGINT, interrupt);
	if (FUNC19(SIGTERM, SIG_IGN) != SIG_IGN)
		FUNC19(SIGTERM, interrupt);
#ifdef SIGHUP
	if (signal(SIGHUP, SIG_IGN) != SIG_IGN)
		signal(SIGHUP, interrupt);
#endif
	if (FUNC13("TMP"))
		tempdir = FUNC13("TMP");
	else if (FUNC13("TEMP"))
		tempdir = FUNC13("TEMP");
	else if (FUNC13("TMPDIR"))
		tempdir = FUNC13("TMPDIR");
	FUNC3(tempdir);
	i = FUNC22(tempdir);
	for (; (i > 0 && tempdir[i-1] == '/') || tempdir[i-1] == '\\'; i--)
		tempdir[i-1] = '\0';
	if (argc <= 1) {
		FUNC14();
		FUNC9(0);
	}
	plist = FUNC2("-D__LCC__", 0);
	FUNC15();
	if (FUNC13("LCCDIR"))
		FUNC17(FUNC21("-lccdir=%s", FUNC13("LCCDIR")));
	for (nf = 0, i = j = 1; i < argc; i++) {
		if (FUNC20(argv[i], "-o") == 0) {
			if (++i < argc) {
				if (FUNC23(argv[i], suffixes, 2) >= 0) {
					FUNC7("-o would overwrite %s", argv[i]);
					FUNC9(8);
				}
				outfile = argv[i];
				continue;
			} else {
				FUNC7("unrecognized option `%s'", argv[i-1]);
				FUNC9(8);
			}
		} else if (FUNC20(argv[i], "-target") == 0) {
			if (argv[i+1] && *argv[i+1] != '-')
				i++;
			continue;
		} else if (*argv[i] == '-' && argv[i][1] != 'l') {
			FUNC16(argv[i]);
			continue;
		} else if (*argv[i] != '-' && FUNC23(argv[i], suffixes, 3) >= 0)
			nf++;
		argv[j++] = argv[i];
	}
	if ((cflag || Sflag) && outfile && nf != 1) {
		FUNC12(stderr, "%s: -o %s ignored\n", progname, outfile);
		outfile = 0;
	}
	argv[j] = 0;
	for (i = 0; include[i]; i++)
		plist = FUNC2(include[i], plist);
	if (ilist) {
		List b = ilist;
		do {
			b = b->link;
			plist = FUNC2(b->str, plist);
		} while (b != ilist);
	}
	ilist = 0;
	for (i = 1; argv[i]; i++)
		if (*argv[i] == '-')
			FUNC16(argv[i]);
		else {
			char *name = FUNC8(argv[i]);
			if (name) {
				if (FUNC20(name, argv[i]) != 0
				|| (nf > 1 && FUNC23(name, suffixes, 3) >= 0))
					FUNC12(stderr, "%s:\n", name);
				FUNC10(name, 0);
			} else
				FUNC7("can't find `%s'", argv[i]);
		}
	if (errcnt == 0 && !Eflag && !Sflag && !cflag && llist[1]) {
		FUNC5(ld, llist[0], llist[1],
			FUNC2(outfile ? outfile : FUNC6("a", FUNC11(suffixes[4])), 0));
		if (FUNC4(av))
			errcnt++;
	}
	FUNC18(rmlist);	
	return errcnt ? EXIT_FAILURE : EXIT_SUCCESS;
}