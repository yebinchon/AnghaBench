
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_9__ {int atr; } ;
struct TYPE_8__ {int atr; } ;
struct TYPE_7__ {int atr; } ;
struct TYPE_6__ {int atr; } ;
struct TYPE_10__ {TYPE_4__ menubox_border; TYPE_3__ darrow; TYPE_2__ menubox; TYPE_1__ uarrow; } ;


 int ACS_DARROW ;
 int ACS_HLINE ;
 int ACS_UARROW ;
 TYPE_5__ dlg ;
 int waddch (int *,int ) ;
 int waddstr (int *,char*) ;
 int wattrset (int *,int ) ;
 int wmove (int *,int,int) ;

__attribute__((used)) static void print_arrows(WINDOW * win, int choice, int item_no, int scroll,
      int y, int x, int height)
{
 wmove(win, y, x);

 if (scroll > 0) {
  wattrset(win, dlg.uarrow.atr);
  waddch(win, ACS_UARROW);
  waddstr(win, "(-)");
 } else {
  wattrset(win, dlg.menubox.atr);
  waddch(win, ACS_HLINE);
  waddch(win, ACS_HLINE);
  waddch(win, ACS_HLINE);
  waddch(win, ACS_HLINE);
 }

 y = y + height + 1;
 wmove(win, y, x);

 if ((height < item_no) && (scroll + choice < item_no - 1)) {
  wattrset(win, dlg.darrow.atr);
  waddch(win, ACS_DARROW);
  waddstr(win, "(+)");
 } else {
  wattrset(win, dlg.menubox_border.atr);
  waddch(win, ACS_HLINE);
  waddch(win, ACS_HLINE);
  waddch(win, ACS_HLINE);
  waddch(win, ACS_HLINE);
 }
}
