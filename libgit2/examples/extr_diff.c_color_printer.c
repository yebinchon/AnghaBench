
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int origin; } ;
typedef TYPE_1__ git_diff_line ;
typedef int git_diff_hunk ;
typedef int git_diff_delta ;
 int * colors ;
 int diff_output (int const*,int const*,TYPE_1__ const*,int ) ;
 int fputs (int ,int ) ;
 int stdout ;

__attribute__((used)) static int color_printer(
 const git_diff_delta *delta,
 const git_diff_hunk *hunk,
 const git_diff_line *line,
 void *data)
{
 int *last_color = data, color = 0;

 (void)delta; (void)hunk;

 if (*last_color >= 0) {
  switch (line->origin) {
  case 133: color = 3; break;
  case 131: color = 2; break;
  case 132: color = 3; break;
  case 130: color = 2; break;
  case 129: color = 1; break;
  case 128: color = 4; break;
  default: break;
  }

  if (color != *last_color) {
   if (*last_color == 1 || color == 1)
    fputs(colors[0], stdout);
   fputs(colors[color], stdout);
   *last_color = color;
  }
 }

 return diff_output(delta, hunk, line, stdout);
}
