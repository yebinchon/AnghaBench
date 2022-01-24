#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char little_endian; char mulops_calls; char wants_callb; char wants_argb; char left_to_right; char wants_dag; int /*<<< orphan*/  (* defsymbol ) (TYPE_1__*) ;int /*<<< orphan*/  stabend; int /*<<< orphan*/ * stabline; } ;
struct TYPE_9__ {int /*<<< orphan*/  stabend; int /*<<< orphan*/ * stabline; } ;
struct TYPE_8__ {void* sclass; void* type; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  Aflag ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 void* EXTERN ; 
 int /*<<< orphan*/  GLOBAL ; 
 TYPE_7__* IR ; 
 int /*<<< orphan*/  PERM ; 
 int /*<<< orphan*/  Pflag ; 
 TYPE_1__* YYcheck ; 
 TYPE_1__* YYnull ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char*) ; 
 char* comment ; 
 int /*<<< orphan*/  density ; 
 int errlimit ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int glevel ; 
 int /*<<< orphan*/  globals ; 
 void* FUNC8 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* rcsid ; 
 TYPE_4__ stabIR ; 
 int /*<<< orphan*/  stabend ; 
 int /*<<< orphan*/ * stabline ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC9 (char*,char) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 char* FUNC11 (char*) ; 
 char* FUNC12 (char*,int) ; 
 scalar_t__ FUNC13 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ *) ; 
 int FUNC15 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (int,char**) ; 
 int /*<<< orphan*/  voidptype ; 
 int /*<<< orphan*/  wflag ; 
 int /*<<< orphan*/  xref ; 

void FUNC20(int argc, char *argv[]) {
	char *infile = NULL, *outfile = NULL;
	int i;
	static int inited;

	if (inited)
		return;
	inited = 1;
	FUNC19(argc, argv);
	for (i = 1; i < argc; i++)
		if (FUNC10(argv[i], "-g") == 0 || FUNC10(argv[i], "-g2") == 0)
			glevel = 2;
		else if (FUNC13(argv[i], "-g", 2) == 0) {	/* -gn[,x] */
			char *p = FUNC9(argv[i], ',');
			glevel = FUNC1(argv[i]+2);
			if (p) {
				comment = p + 1;
				if (glevel == 0)
					glevel = 1;
				if (stabIR.stabline == NULL) {
					stabIR.stabline = IR->stabline;
					stabIR.stabend = IR->stabend;
					IR->stabline = stabline;
					IR->stabend = stabend;
				}
			}	
		} else if (FUNC10(argv[i], "-x") == 0)
			xref++;
		else if (FUNC10(argv[i], "-A") == 0) {
			++Aflag;
		} else if (FUNC10(argv[i], "-P") == 0)
			Pflag++;
		else if (FUNC10(argv[i], "-w") == 0)
			wflag++;
		else if (FUNC10(argv[i], "-n") == 0) {
			if (!YYnull) {
				YYnull = FUNC8(FUNC11("_YYnull"), &globals, GLOBAL, PERM);
				YYnull->type = FUNC7(voidptype, NULL, 1);
				YYnull->sclass = EXTERN;
				(*IR->defsymbol)(YYnull);
			}
		} else if (FUNC13(argv[i], "-n", 2) == 0) {	/* -nvalid[,check] */
			char *p = FUNC9(argv[i], ',');
			if (p) {
				YYcheck = FUNC8(FUNC11(p+1), &globals, GLOBAL, PERM);
				YYcheck->type = FUNC7(voidptype, NULL, 1);
				YYcheck->sclass = EXTERN;
				(*IR->defsymbol)(YYcheck);
				p = FUNC12(argv[i]+2, p - (argv[i]+2));
			} else
				p = FUNC11(argv[i]+2);
			YYnull = FUNC8(p, &globals, GLOBAL, PERM);
			YYnull->type = FUNC7(voidptype, NULL, 1);
			YYnull->sclass = EXTERN;
			(*IR->defsymbol)(YYnull);
		} else if (FUNC10(argv[i], "-v") == 0)
			FUNC5(stderr, "%s %s\n", argv[0], rcsid);
		else if (FUNC13(argv[i], "-s", 2) == 0)
			density = FUNC14(&argv[i][2], NULL);
		else if (FUNC13(argv[i], "-errout=", 8) == 0) {
			FILE *f = FUNC4(argv[i]+8, "w");
			if (f == NULL) {
				FUNC5(stderr, "%s: can't write errors to `%s'\n", argv[0], argv[i]+8);
				FUNC2(EXIT_FAILURE);
			}
			FUNC3(f);
			f = FUNC6(argv[i]+8, "w", stderr);
			FUNC0(f);
		} else if (FUNC13(argv[i], "-e", 2) == 0) {
			int x;
			if ((x = FUNC15(&argv[i][2], NULL, 0)) > 0)
				errlimit = x;
		} else if (FUNC13(argv[i], "-little_endian=", 15) == 0)
			IR->little_endian = argv[i][15] - '0';
		else if (FUNC13(argv[i], "-mulops_calls=", 18) == 0)
			IR->mulops_calls = argv[i][18] - '0';
		else if (FUNC13(argv[i], "-wants_callb=", 13) == 0)
			IR->wants_callb = argv[i][13] - '0';
		else if (FUNC13(argv[i], "-wants_argb=", 12) == 0)
			IR->wants_argb = argv[i][12] - '0';
		else if (FUNC13(argv[i], "-left_to_right=", 15) == 0)
			IR->left_to_right = argv[i][15] - '0';
		else if (FUNC13(argv[i], "-wants_dag=", 11) == 0)
			IR->wants_dag = argv[i][11] - '0';
		else if (*argv[i] != '-' || FUNC10(argv[i], "-") == 0) {
			if (infile == NULL)
				infile = argv[i];
			else if (outfile == NULL)
				outfile = argv[i];
		}

	if (infile != NULL && FUNC10(infile, "-") != 0
	&& FUNC6(infile, "r", stdin) == NULL) {
		FUNC5(stderr, "%s: can't read `%s'\n", argv[0], infile);
		FUNC2(EXIT_FAILURE);
	}
	if (outfile != NULL && FUNC10(outfile, "-") != 0
	&& FUNC6(outfile, "w", stdout) == NULL) {
		FUNC5(stderr, "%s: can't write `%s'\n", argv[0], outfile);
		FUNC2(EXIT_FAILURE);
	}
}