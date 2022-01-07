
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ final_start_line_number; } ;
typedef TYPE_1__ git_blame_hunk ;



__attribute__((used)) static int hunk_cmp(const void *_a, const void *_b)
{
 git_blame_hunk *a = (git_blame_hunk*)_a,
      *b = (git_blame_hunk*)_b;

 if (a->final_start_line_number > b->final_start_line_number)
  return 1;
 else if (a->final_start_line_number < b->final_start_line_number)
  return -1;
 else
  return 0;
}
