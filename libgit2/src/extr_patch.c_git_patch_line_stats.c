
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int totals ;
struct TYPE_5__ {int lines; } ;
typedef TYPE_1__ git_patch ;
struct TYPE_6__ {int origin; } ;
typedef TYPE_2__ git_diff_line ;





 TYPE_2__* git_array_get (int ,size_t) ;
 size_t git_array_size (int ) ;
 int memset (size_t*,int ,int) ;

int git_patch_line_stats(
 size_t *total_ctxt,
 size_t *total_adds,
 size_t *total_dels,
 const git_patch *patch)
{
 size_t totals[3], idx;

 memset(totals, 0, sizeof(totals));

 for (idx = 0; idx < git_array_size(patch->lines); ++idx) {
  git_diff_line *line = git_array_get(patch->lines, idx);
  if (!line)
   continue;

  switch (line->origin) {
  case 129: totals[0]++; break;
  case 130: totals[1]++; break;
  case 128: totals[2]++; break;
  default:



   break;
  }
 }

 if (total_ctxt)
  *total_ctxt = totals[0];
 if (total_adds)
  *total_adds = totals[1];
 if (total_dels)
  *total_dels = totals[2];

 return 0;
}
