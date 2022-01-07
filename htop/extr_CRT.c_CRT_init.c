
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int A_BOLD ;
 int BUTTON1_RELEASED ;
 int BUTTON4_PRESSED ;
 int BUTTON5_PRESSED ;
 int Black ;
 int CODESET ;
 size_t COLORSCHEME_BROKENGRAY ;
 size_t COLORSCHEME_DEFAULT ;
 int CRT_colorScheme ;
 unsigned int** CRT_colorSchemes ;
 unsigned int* CRT_colors ;
 int CRT_delay ;
 int CRT_handleSIGSEGV ;
 int CRT_handleSIGTERM ;
 int CRT_hasColors ;
 int CRT_scrollHAmount ;
 int CRT_setColors (int) ;
 int CRT_termType ;
 int CRT_treeStr ;
 int CRT_treeStrAscii ;
 int CRT_treeStrUtf8 ;
 int CRT_utf8 ;
 unsigned int ColorPair (int ,int ) ;
 unsigned int ColorPairGrayBlack ;
 int KEY_ALT (char) ;
 int KEY_END ;
 int KEY_F (int) ;
 int KEY_HOME ;
 int LAST_COLORELEMENT ;
 int LC_CTYPE ;
 int SIGQUIT ;
 int SIGTERM ;
 scalar_t__ String_eq (int ,char*) ;
 scalar_t__ String_startsWith (int ,char*) ;
 int White ;
 int curs_set (int ) ;
 int define_key (char*,int ) ;
 int getenv (char*) ;
 int halfdelay (int) ;
 scalar_t__ has_colors () ;
 int initscr () ;
 int intrflush (int ,int) ;
 int keypad (int ,int) ;
 int mouseinterval (int ) ;
 int mousemask (int,int *) ;
 int nl_langinfo (int ) ;
 int noecho () ;
 int nonl () ;
 int setlocale (int ,char*) ;
 int signal (int,int ) ;
 int start_color () ;
 int stdscr ;
 scalar_t__ strcmp (int ,char*) ;
 int use_default_colors () ;

void CRT_init(int delay, int colorScheme) {
   initscr();
   noecho();
   CRT_delay = delay;
   if (CRT_delay == 0) {
      CRT_delay = 1;
   }
   CRT_colors = CRT_colorSchemes[colorScheme];
   CRT_colorScheme = colorScheme;

   for (int i = 0; i < LAST_COLORELEMENT; i++) {
      unsigned int color = CRT_colorSchemes[COLORSCHEME_DEFAULT][i];
      CRT_colorSchemes[COLORSCHEME_BROKENGRAY][i] = color == (A_BOLD | ColorPairGrayBlack) ? ColorPair(White,Black) : color;
   }

   halfdelay(CRT_delay);
   nonl();
   intrflush(stdscr, 0);
   keypad(stdscr, 1);
   mouseinterval(0);
   curs_set(0);
   if (has_colors()) {
      start_color();
      CRT_hasColors = 1;
   } else {
      CRT_hasColors = 0;
   }
   CRT_termType = getenv("TERM");
   if (String_eq(CRT_termType, "linux"))
      CRT_scrollHAmount = 20;
   else
      CRT_scrollHAmount = 5;
   if (String_startsWith(CRT_termType, "xterm") || String_eq(CRT_termType, "vt220")) {
      define_key("\033[H", KEY_HOME);
      define_key("\033[F", KEY_END);
      define_key("\033[7~", KEY_HOME);
      define_key("\033[8~", KEY_END);
      define_key("\033OP", KEY_F(1));
      define_key("\033OQ", KEY_F(2));
      define_key("\033OR", KEY_F(3));
      define_key("\033OS", KEY_F(4));
      define_key("\033[11~", KEY_F(1));
      define_key("\033[12~", KEY_F(2));
      define_key("\033[13~", KEY_F(3));
      define_key("\033[14~", KEY_F(4));
      define_key("\033[17;2~", KEY_F(18));
      char sequence[3] = "\033a";
      for (char c = 'a'; c <= 'z'; c++) {
         sequence[1] = c;
         define_key(sequence, KEY_ALT('A' + (c - 'a')));
      }
   }

   signal(11, CRT_handleSIGSEGV);

   signal(SIGTERM, CRT_handleSIGTERM);
   signal(SIGQUIT, CRT_handleSIGTERM);
   use_default_colors();
   if (!has_colors())
      CRT_colorScheme = 1;
   CRT_setColors(CRT_colorScheme);


   setlocale(LC_CTYPE, "");
   CRT_treeStr =



      CRT_treeStrAscii;




   mousemask(BUTTON1_RELEASED, ((void*)0));


}
