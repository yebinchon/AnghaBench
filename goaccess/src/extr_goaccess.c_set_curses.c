
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int no_color; scalar_t__ read_stdin; scalar_t__ load_conf_dlg; int color_scheme; } ;


 scalar_t__ FALSE ;
 int FATAL (char*,char const*) ;
 int NO_COLOR ;
 int clear () ;
 TYPE_1__ conf ;
 int glog ;
 scalar_t__ has_colors () ;
 int header_win ;
 int init_colors (int ) ;
 int init_windows (int *,int *) ;
 int main_win ;
 int parsing_spinner ;
 int refresh () ;
 int render_confdlg (int ,int ) ;
 int set_curses_spinner (int ) ;
 int set_input_opts () ;
 int setup_thread_signals () ;
 int start_color () ;
 int ui_spinner_create (int ) ;
 char* verify_formats () ;

__attribute__((used)) static void
set_curses (int *quit)
{
  const char *err_log = ((void*)0);

  setup_thread_signals ();
  set_input_opts ();
  if (conf.no_color || has_colors () == FALSE) {
    conf.color_scheme = NO_COLOR;
    conf.no_color = 1;
  } else {
    start_color ();
  }
  init_colors (0);
  init_windows (&header_win, &main_win);
  set_curses_spinner (parsing_spinner);


  if (!conf.read_stdin && (verify_formats () || conf.load_conf_dlg)) {
    refresh ();
    *quit = render_confdlg (glog, parsing_spinner);
    clear ();
  }

  else if (conf.read_stdin && (err_log = verify_formats ())) {
    FATAL ("%s", err_log);
  }

  else {
    ui_spinner_create (parsing_spinner);
  }
}
