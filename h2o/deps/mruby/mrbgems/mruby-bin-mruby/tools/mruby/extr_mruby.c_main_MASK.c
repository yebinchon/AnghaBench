#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;

/* Type definitions */
struct _args {char* cmdline; int argc; char** argv; int libc; char** libv; scalar_t__ check_syntax; int /*<<< orphan*/ * rfp; scalar_t__ mrbfile; scalar_t__ verbose; int /*<<< orphan*/  debug; } ;
struct TYPE_29__ {void* no_exec; void* dump_result; } ;
typedef  TYPE_1__ mrbc_context ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_sym ;
struct TYPE_30__ {scalar_t__ exc; } ;
typedef  TYPE_2__ mrb_state ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct _args*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 
 int FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 TYPE_2__* FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 char* FUNC24 (char*,int) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_1__* FUNC26 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_2__*,TYPE_1__*,char const*) ; 
 int FUNC28 (TYPE_2__*,int,char**,struct _args*) ; 
 int /*<<< orphan*/  FUNC29 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC30 (char*) ; 

int
FUNC31(int argc, char **argv)
{
  mrb_state *mrb = FUNC17();
  int n = -1;
  int i;
  struct _args args;
  mrb_value ARGV;
  mrbc_context *c;
  mrb_value v;
  mrb_sym zero_sym;

  if (mrb == NULL) {
    FUNC4("Invalid mrb_state, exiting mruby\n", stderr);
    return EXIT_FAILURE;
  }

  n = FUNC28(mrb, argc, argv, &args);
  if (n == EXIT_FAILURE || (args.cmdline == NULL && args.rfp == NULL)) {
    FUNC1(mrb, &args);
    FUNC30(argv[0]);
    return n;
  }
  else {
    int ai = FUNC10(mrb);
    ARGV = FUNC5(mrb, args.argc);
    for (i = 0; i < args.argc; i++) {
      char* utf8 = FUNC24(args.argv[i], -1);
      if (utf8) {
        FUNC6(mrb, ARGV, FUNC20(mrb, utf8));
        FUNC23(utf8);
      }
    }
    FUNC8(mrb, "ARGV", ARGV);
    FUNC11(mrb, FUNC12(mrb, "$DEBUG"), FUNC7(args.debug));

    c = FUNC26(mrb);
    if (args.verbose)
      c->dump_result = TRUE;
    if (args.check_syntax)
      c->no_exec = TRUE;

    /* Set $0 */
    zero_sym = FUNC12(mrb, "$0");
    if (args.rfp) {
      const char *cmdline;
      cmdline = args.cmdline ? args.cmdline : "-";
      FUNC27(mrb, c, cmdline);
      FUNC11(mrb, zero_sym, FUNC20(mrb, cmdline));
    }
    else {
      FUNC27(mrb, c, "-e");
      FUNC11(mrb, zero_sym, FUNC21(mrb, "-e"));
    }

    /* Load libraries */
    for (i = 0; i < args.libc; i++) {
      FILE *lfp = FUNC3(args.libv[i], args.mrbfile ? "rb" : "r");
      if (lfp == NULL) {
        FUNC29("Cannot open library file: %s\n", args.libv[i]);
        FUNC25(mrb, c);
        FUNC1(mrb, &args);
        return EXIT_FAILURE;
      }
      if (args.mrbfile) {
        v = FUNC14(mrb, lfp, c);
      }
      else {
        v = FUNC13(mrb, lfp, c);
      }
      FUNC2(lfp);
    }

    /* Load program */
    if (args.mrbfile) {
      v = FUNC14(mrb, args.rfp, c);
    }
    else if (args.rfp) {
      v = FUNC13(mrb, args.rfp, c);
    }
    else {
      char* utf8 = FUNC24(args.cmdline, -1);
      if (!utf8) FUNC0();
      v = FUNC15(mrb, utf8, c);
      FUNC23(utf8);
    }

    FUNC9(mrb, ai);
    FUNC25(mrb, c);
    if (mrb->exc) {
      if (FUNC22(v)) {
        FUNC18(mrb, FUNC16(mrb->exc));
      }
      else {
        FUNC19(mrb);
      }
      n = -1;
    }
    else if (args.check_syntax) {
      FUNC29("Syntax OK\n");
    }
  }
  FUNC1(mrb, &args);

  return n == 0 ? EXIT_SUCCESS : EXIT_FAILURE;
}