
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_3__ {int atr; } ;
struct TYPE_4__ {TYPE_1__ title; } ;


 int MIN (int,int ) ;
 TYPE_2__ dlg ;
 int mvwaddch (int *,int ,int,char) ;
 int mvwaddnstr (int *,int ,int,char const*,int) ;
 int strlen (char const*) ;
 int waddch (int *,char) ;
 int wattrset (int *,int ) ;

void print_title(WINDOW *dialog, const char *title, int width)
{
 if (title) {
  int tlen = MIN(width - 2, strlen(title));
  wattrset(dialog, dlg.title.atr);
  mvwaddch(dialog, 0, (width - tlen) / 2 - 1, ' ');
  mvwaddnstr(dialog, 0, (width - tlen)/2, title, tlen);
  waddch(dialog, ' ');
 }
}
