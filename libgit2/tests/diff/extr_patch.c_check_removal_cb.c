
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int origin; int content; } ;
typedef TYPE_3__ git_diff_line ;
struct TYPE_12__ {int new_lines; int new_start; int old_lines; int old_start; } ;
typedef TYPE_4__ git_diff_hunk ;
struct TYPE_10__ {int path; } ;
struct TYPE_9__ {int path; } ;
struct TYPE_13__ {int status; TYPE_2__ new_file; TYPE_1__ old_file; } ;
typedef TYPE_5__ git_diff_delta ;


 char* EXPECTED_HEADER ;
 char* EXPECTED_HUNK ;
 int GIT_DELTA_DELETED ;




 int cl_assert (int ) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_assert_equal_s (char*,int ) ;

__attribute__((used)) static int check_removal_cb(
 const git_diff_delta *delta,
 const git_diff_hunk *hunk,
 const git_diff_line *line,
 void *payload)
{
 switch (line->origin) {
 case 129:
  cl_assert_equal_s(EXPECTED_HEADER, line->content);
  cl_assert(hunk == ((void*)0));
  goto check_delta;

 case 128:
  cl_assert_equal_s(EXPECTED_HUNK, line->content);
  goto check_hunk;

 case 131:
 case 130:
  if (payload != ((void*)0))
   return *(int *)payload;
  goto check_hunk;

 default:

  return -1;
 }

check_hunk:
 cl_assert(hunk != ((void*)0));
 cl_assert_equal_i(1, hunk->old_start);
 cl_assert_equal_i(2, hunk->old_lines);
 cl_assert_equal_i(0, hunk->new_start);
 cl_assert_equal_i(0, hunk->new_lines);

check_delta:
 cl_assert_equal_s("subdir.txt", delta->old_file.path);
 cl_assert_equal_s("subdir.txt", delta->new_file.path);
 cl_assert_equal_i(GIT_DELTA_DELETED, delta->status);

 return 0;
}
