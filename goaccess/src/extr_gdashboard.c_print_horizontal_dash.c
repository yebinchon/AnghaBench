
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int mvwprintw (int *,int,int,char*,int,char*) ;

__attribute__((used)) static void
print_horizontal_dash (WINDOW * win, int y, int x, int len)
{
  mvwprintw (win, y, x, "%.*s", len, "----------------");
}
