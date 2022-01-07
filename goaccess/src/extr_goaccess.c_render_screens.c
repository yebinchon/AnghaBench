
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int processed; int offset; } ;
struct TYPE_10__ {int current; } ;
struct TYPE_9__ {int attr; TYPE_1__* pair; } ;
struct TYPE_8__ {int idx; } ;
typedef TYPE_2__ GColors ;


 int COLOR_DEFAULT ;
 int COLOR_PAIR (int ) ;
 int GO_VERSION ;
 int T_HELP_ENTER ;
 int T_QUIT ;
 int asctime (int ) ;
 int color_default ;
 int dash ;
 int display_content (int ,int ,TYPE_3__*) ;
 int display_general (int ,TYPE_4__*,int ) ;
 int draw_header (int ,char*,char*,int,int ,int,int ) ;
 int generate_time () ;
 TYPE_2__* get_color (int ) ;
 int getmaxyx (int ,int,int) ;
 TYPE_4__* glog ;
 TYPE_3__ gscroll ;
 int header_win ;
 int holder ;
 int main_win ;
 int main_win_height ;
 int mvaddstr (int,int,int ) ;
 int mvprintw (int,int,char*,int,...) ;
 int now_tm ;
 int refresh () ;
 int stdscr ;
 int term_size (int ,int *) ;
 int update_active_module (int ,int ) ;
 int wattroff (int ,int) ;
 int wattron (int ,int) ;
 int wrefresh (int ) ;

__attribute__((used)) static void
render_screens (void)
{
  GColors *color = get_color (COLOR_DEFAULT);
  int row, col, chg = 0;

  getmaxyx (stdscr, row, col);
  term_size (main_win, &main_win_height);

  generate_time ();
  chg = glog->processed - glog->offset;

  draw_header (stdscr, "", "%s", row - 1, 0, col, color_default);

  wattron (stdscr, color->attr | COLOR_PAIR (color->pair->idx));
  mvaddstr (row - 1, 1, T_HELP_ENTER);
  mvprintw (row - 1, 30, "%d - %s", chg, asctime (now_tm));
  mvaddstr (row - 1, col - 21, T_QUIT);
  mvprintw (row - 1, col - 5, "%s", GO_VERSION);
  wattroff (stdscr, color->attr | COLOR_PAIR (color->pair->idx));

  refresh ();


  display_general (header_win, glog, holder);
  wrefresh (header_win);


  update_active_module (header_win, gscroll.current);

  display_content (main_win, dash, &gscroll);
}
