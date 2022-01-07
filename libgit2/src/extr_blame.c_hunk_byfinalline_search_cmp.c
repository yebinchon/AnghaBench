
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t lines_in_hunk; size_t final_start_line_number; } ;
typedef TYPE_1__ git_blame_hunk ;



__attribute__((used)) static int hunk_byfinalline_search_cmp(const void *key, const void *entry)
{
 git_blame_hunk *hunk = (git_blame_hunk*)entry;

 size_t lineno = *(size_t*)key;
 size_t lines_in_hunk = hunk->lines_in_hunk;
 size_t final_start_line_number = hunk->final_start_line_number;

 if (lineno < final_start_line_number)
  return -1;
 if (lineno >= final_start_line_number + lines_in_hunk)
  return 1;
 return 0;
}
