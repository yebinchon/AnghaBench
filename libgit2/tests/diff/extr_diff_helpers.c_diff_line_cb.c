
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int origin; } ;
typedef TYPE_1__ git_diff_line ;
typedef int git_diff_hunk ;
typedef int git_diff_delta ;
struct TYPE_5__ {int line_dels; int line_adds; int line_ctxt; int lines; } ;
typedef TYPE_2__ diff_expects ;
 int GIT_UNUSED (int const*) ;

int diff_line_cb(
 const git_diff_delta *delta,
 const git_diff_hunk *hunk,
 const git_diff_line *line,
 void *payload)
{
 diff_expects *e = payload;

 GIT_UNUSED(delta);
 GIT_UNUSED(hunk);

 e->lines++;
 switch (line->origin) {
 case 131:
 case 130:
  e->line_ctxt++;
  break;
 case 133:
 case 132:
  e->line_adds++;
  break;
 case 129:
 case 128:
  e->line_dels++;
  break;
 default:
  break;
 }
 return 0;
}
