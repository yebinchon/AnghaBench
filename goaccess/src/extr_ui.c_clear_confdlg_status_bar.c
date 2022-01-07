
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int color_default ;
 int draw_header (int *,char*,char*,int,int,int,int ) ;

__attribute__((used)) static void
clear_confdlg_status_bar (WINDOW * win, int y, int x, int w)
{
  draw_header (win, "", "%s", y, x, w + 1, color_default);
}
