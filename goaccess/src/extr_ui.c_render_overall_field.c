
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
 int mvwprintw (int *,int,int,char*,char const*) ;
 int wattroff (int *,int) ;
 int wattron (int *,int) ;

__attribute__((used)) static void
render_overall_field (WINDOW * win, const char *s, int y, int x,
                      GColors * color)
{
  wattron (win, color->attr | COLOR_PAIR (color->pair->idx));
  mvwprintw (win, y, x, "%s", s);
  wattroff (win, color->attr | COLOR_PAIR (color->pair->idx));
}
