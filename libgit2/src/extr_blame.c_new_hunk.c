
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t lines_in_hunk; size_t final_start_line_number; size_t orig_start_line_number; int * orig_path; } ;
typedef TYPE_1__ git_blame_hunk ;


 TYPE_1__* git__calloc (int,int) ;
 int * git__strdup (char const*) ;

__attribute__((used)) static git_blame_hunk* new_hunk(
  size_t start,
  size_t lines,
  size_t orig_start,
  const char *path)
{
 git_blame_hunk *hunk = git__calloc(1, sizeof(git_blame_hunk));
 if (!hunk) return ((void*)0);

 hunk->lines_in_hunk = lines;
 hunk->final_start_line_number = start;
 hunk->orig_start_line_number = orig_start;
 hunk->orig_path = path ? git__strdup(path) : ((void*)0);

 return hunk;
}
