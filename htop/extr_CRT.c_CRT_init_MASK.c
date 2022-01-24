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
 unsigned int A_BOLD ; 
 int BUTTON1_RELEASED ; 
 int BUTTON4_PRESSED ; 
 int BUTTON5_PRESSED ; 
 int /*<<< orphan*/  Black ; 
 int /*<<< orphan*/  CODESET ; 
 size_t COLORSCHEME_BROKENGRAY ; 
 size_t COLORSCHEME_DEFAULT ; 
 int CRT_colorScheme ; 
 unsigned int** CRT_colorSchemes ; 
 unsigned int* CRT_colors ; 
 int CRT_delay ; 
 int /*<<< orphan*/  CRT_handleSIGSEGV ; 
 int /*<<< orphan*/  CRT_handleSIGTERM ; 
 int CRT_hasColors ; 
 int CRT_scrollHAmount ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CRT_termType ; 
 int /*<<< orphan*/  CRT_treeStr ; 
 int /*<<< orphan*/  CRT_treeStrAscii ; 
 int /*<<< orphan*/  CRT_treeStrUtf8 ; 
 int CRT_utf8 ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int ColorPairGrayBlack ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  KEY_END ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  KEY_HOME ; 
 int LAST_COLORELEMENT ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int SIGQUIT ; 
 int SIGTERM ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  White ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  stdscr ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC23 () ; 

void FUNC24(int delay, int colorScheme) {
   FUNC11();
   FUNC17();
   CRT_delay = delay;
   if (CRT_delay == 0) {
      CRT_delay = 1;
   }
   CRT_colors = CRT_colorSchemes[colorScheme];
   CRT_colorScheme = colorScheme;
   
   for (int i = 0; i < LAST_COLORELEMENT; i++) {
      unsigned int color = CRT_colorSchemes[COLORSCHEME_DEFAULT][i];
      CRT_colorSchemes[COLORSCHEME_BROKENGRAY][i] = color == (A_BOLD | ColorPairGrayBlack) ? FUNC1(White,Black) : color;
   }
   
   FUNC9(CRT_delay);
   FUNC18();
   FUNC12(stdscr, false);
   FUNC13(stdscr, true);
   FUNC14(0);
   FUNC6(0);
   if (FUNC10()) {
      FUNC21();
      CRT_hasColors = true;
   } else {
      CRT_hasColors = false;
   }
   CRT_termType = FUNC8("TERM");
   if (FUNC4(CRT_termType, "linux"))
      CRT_scrollHAmount = 20;
   else
      CRT_scrollHAmount = 5;
   if (FUNC5(CRT_termType, "xterm") || FUNC4(CRT_termType, "vt220")) {
      FUNC7("\033[H", KEY_HOME);
      FUNC7("\033[F", KEY_END);
      FUNC7("\033[7~", KEY_HOME);
      FUNC7("\033[8~", KEY_END);
      FUNC7("\033OP", FUNC3(1));
      FUNC7("\033OQ", FUNC3(2));
      FUNC7("\033OR", FUNC3(3));
      FUNC7("\033OS", FUNC3(4));
      FUNC7("\033[11~", FUNC3(1));
      FUNC7("\033[12~", FUNC3(2));
      FUNC7("\033[13~", FUNC3(3));
      FUNC7("\033[14~", FUNC3(4));
      FUNC7("\033[17;2~", FUNC3(18));
      char sequence[3] = "\033a";
      for (char c = 'a'; c <= 'z'; c++) {
         sequence[1] = c;
         FUNC7(sequence, FUNC2('A' + (c - 'a')));
      }
   }
#ifndef DEBUG
   FUNC20(11, CRT_handleSIGSEGV);
#endif
   FUNC20(SIGTERM, CRT_handleSIGTERM);
   FUNC20(SIGQUIT, CRT_handleSIGTERM);
   FUNC23();
   if (!FUNC10())
      CRT_colorScheme = 1;
   FUNC0(CRT_colorScheme);

   /* initialize locale */
   FUNC19(LC_CTYPE, "");

#ifdef HAVE_LIBNCURSESW
   if(strcmp(nl_langinfo(CODESET), "UTF-8") == 0)
      CRT_utf8 = true;
   else
      CRT_utf8 = false;
#endif

   CRT_treeStr =
#ifdef HAVE_LIBNCURSESW
      CRT_utf8 ? CRT_treeStrUtf8 :
#endif
      CRT_treeStrAscii;

#if NCURSES_MOUSE_VERSION > 1
   mousemask(BUTTON1_RELEASED | BUTTON4_PRESSED | BUTTON5_PRESSED, NULL);
#else
   FUNC15(BUTTON1_RELEASED, NULL);
#endif

}