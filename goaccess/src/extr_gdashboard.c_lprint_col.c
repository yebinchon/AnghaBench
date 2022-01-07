
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_5__ {int attr; TYPE_1__* pair; } ;
struct TYPE_4__ {int idx; } ;
typedef TYPE_2__ GColors ;


 int COLOR_PAIR (int ) ;
 int COLOR_PANEL_COLS ;
 scalar_t__ DASH_SPACE ;
 TYPE_2__* get_color (int ) ;
 int mvwprintw (int *,int,int,char const*,char const*) ;
 int print_horizontal_dash (int *,int,int,int) ;
 int wattroff (int *,int) ;
 int wattron (int *,int) ;

__attribute__((used)) static void
lprint_col (WINDOW * win, int y, int *x, int len, const char *fmt,
            const char *str)
{
  GColors *color = get_color (COLOR_PANEL_COLS);

  wattron (win, color->attr | COLOR_PAIR (color->pair->idx));
  mvwprintw (win, y, *x, fmt, str);
  print_horizontal_dash (win, y + 1, *x, len);
  wattroff (win, color->attr | COLOR_PAIR (color->pair->idx));

  *x += len + DASH_SPACE;
}
