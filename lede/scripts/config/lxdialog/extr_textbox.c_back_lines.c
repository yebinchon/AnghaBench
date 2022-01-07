
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int begin_reached ;
 char* buf ;
 scalar_t__ end_reached ;
 char* page ;

__attribute__((used)) static void back_lines(int n)
{
 int i;

 begin_reached = 0;

 for (i = 0; i < n; i++) {
  if (*page == '\0') {
   if (end_reached) {
    end_reached = 0;
    continue;
   }
  }
  if (page == buf) {
   begin_reached = 1;
   return;
  }
  page--;
  do {
   if (page == buf) {
    begin_reached = 1;
    return;
   }
   page--;
  } while (*page != '\n');
  page++;
 }
}
