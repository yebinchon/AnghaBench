
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int old_start; int old_lines; int new_start; int new_lines; } ;
typedef TYPE_1__ git_diff_hunk ;


 int GIT_ERROR_INVALID ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_xdiff_scan_int (char const**,int*) ;

__attribute__((used)) static int git_xdiff_parse_hunk(git_diff_hunk *hunk, const char *header)
{

 if (*header != '@')
  goto fail;
 if (git_xdiff_scan_int(&header, &hunk->old_start) < 0)
  goto fail;
 if (*header == ',') {
  if (git_xdiff_scan_int(&header, &hunk->old_lines) < 0)
   goto fail;
 } else
  hunk->old_lines = 1;
 if (git_xdiff_scan_int(&header, &hunk->new_start) < 0)
  goto fail;
 if (*header == ',') {
  if (git_xdiff_scan_int(&header, &hunk->new_lines) < 0)
   goto fail;
 } else
  hunk->new_lines = 1;
 if (hunk->old_start < 0 || hunk->new_start < 0)
  goto fail;

 return 0;

fail:
 git_error_set(GIT_ERROR_INVALID, "malformed hunk header from xdiff");
 return -1;
}
