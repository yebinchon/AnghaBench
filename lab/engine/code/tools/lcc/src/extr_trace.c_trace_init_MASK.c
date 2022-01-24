#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  returns; int /*<<< orphan*/  entry; } ;
struct TYPE_5__ {scalar_t__ defined; } ;
typedef  TYPE_1__* Symbol ;
typedef  int /*<<< orphan*/  Apply ;

/* Variables and functions */
 int /*<<< orphan*/  CONST ; 
 int /*<<< orphan*/  EXTERN ; 
 scalar_t__ IR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  chartype ; 
 TYPE_3__ events ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inttype ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 scalar_t__ tracecall ; 
 scalar_t__ tracereturn ; 
 int /*<<< orphan*/  FUNC7 (int,char**) ; 

void FUNC8(int argc, char *argv[]) {
	int i;
	static int inited;

	if (inited)
		return;
	inited = 1;
	FUNC7(argc, argv);
	if (IR)
		for (i = 1; i < argc; i++)
			if (FUNC6(argv[i], "-t", 2) == 0 &&  FUNC5(argv[i], '=') == NULL) {
				Symbol printer = FUNC2(EXTERN,
					argv[i][2] ? &argv[i][2] : "printf",
				FUNC1(inttype, FUNC3(FUNC4(CONST, chartype))));
				printer->defined = 0;
				FUNC0((Apply)tracecall,   printer, &events.entry);
				FUNC0((Apply)tracereturn, printer, &events.returns);
				break;
			}
}