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
struct pt_regs {int /*<<< orphan*/  nip; int /*<<< orphan*/  link; int /*<<< orphan*/ * gpr; } ;

/* Variables and functions */
#define  EOF 128 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  help_string ; 
 int FUNC14 () ; 
 int /*<<< orphan*/ * last_cmd ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (char*,...) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int FUNC28 () ; 
 int FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int termch ; 
 int /*<<< orphan*/  tracing_enabled ; 
 int /*<<< orphan*/  FUNC33 () ; 
 int /*<<< orphan*/  xmon_is_ro ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 
 struct pt_regs* xmon_regs ; 
 char* xmon_ro_msg ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC36(struct pt_regs *excp)
{
	int cmd = 0;

	last_cmd = NULL;
	xmon_regs = excp;

	FUNC35(excp->gpr[1], excp->link, excp->nip);

	for(;;) {
#ifdef CONFIG_SMP
		printf("%x:", smp_processor_id());
#endif /* CONFIG_SMP */
		FUNC20("mon> ");
		FUNC13();
		termch = 0;
		cmd = FUNC28();
		if( cmd == '\n' ) {
			if (last_cmd == NULL)
				continue;
			FUNC32(last_cmd);
			last_cmd = NULL;
			cmd = FUNC14();
		}
		switch (cmd) {
		case 'm':
			cmd = FUNC14();
			switch (cmd) {
			case 'm':
			case 's':
			case 'd':
				FUNC18(cmd);
				break;
			case 'l':
				FUNC17();
				break;
			case 'z':
				if (xmon_is_ro) {
					FUNC20(xmon_ro_msg);
					break;
				}
				FUNC19();
				break;
			case 'i':
				FUNC25(0, NULL);
				break;
			default:
				termch = cmd;
				FUNC16();
			}
			break;
		case 'd':
			FUNC8();
			break;
		case 'l':
			FUNC31();
			break;
		case 'r':
			FUNC22(excp);	/* print regs */
			break;
		case 'e':
			FUNC12(excp);
			break;
		case 'S':
			FUNC30();
			break;
		case 't':
			FUNC0(excp);
			break;
		case 'f':
			FUNC3();
			break;
		case 's':
			if (FUNC6() == 0)
				break;
			if (FUNC7(excp))
				return cmd;
			break;
		case 'x':
		case 'X':
			if (tracing_enabled)
				FUNC33();
			return cmd;
		case EOF:
			FUNC20(" <no input ...>\n");
			FUNC15(2000);
			return cmd;
		case '?':
			FUNC34(help_string);
			break;
		case '#':
			FUNC24();
			break;
		case 'b':
			if (xmon_is_ro) {
				FUNC20(xmon_ro_msg);
				break;
			}
			FUNC2();
			break;
		case 'C':
			FUNC5();
			break;
		case 'c':
			if (FUNC4())
				return 0;
			break;
		case 'z':
			FUNC1();
			break;
		case 'p':
			if (xmon_is_ro) {
				FUNC20(xmon_ro_msg);
				break;
			}
			FUNC21();
			break;
		case 'P':
			FUNC26();
			break;
#ifdef CONFIG_PPC_BOOK3S
		case 'u':
			dump_segments();
			break;
#elif defined(CONFIG_44x)
		case 'u':
			dump_tlb_44x();
			break;
#elif defined(CONFIG_PPC_BOOK3E)
		case 'u':
			dump_tlb_book3e();
			break;
#endif
		case 'U':
			FUNC27();
			break;
		default:
			FUNC20("Unrecognized command: ");
			do {
				if (' ' < cmd && cmd <= '~')
					FUNC23(cmd);
				else
					FUNC20("\\x%x", cmd);
				cmd = FUNC14();
			} while (cmd != '\n');
			FUNC20(" (type ? for help)\n");
			break;
		}
	}
}