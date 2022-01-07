
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int matched_pathspec; int * path; } ;
typedef TYPE_2__ notify_expected ;
struct TYPE_5__ {int path; } ;
struct TYPE_7__ {TYPE_1__ new_file; } ;
typedef TYPE_3__ git_diff_delta ;
typedef int git_diff ;


 int GIT_UNUSED (int const*) ;
 int cl_assert (int) ;
 int cl_assert_equal_s (int ,char const*) ;
 scalar_t__ strcmp (int *,int ) ;

__attribute__((used)) static int assert_called_notifications(
 const git_diff *diff_so_far,
 const git_diff_delta *delta_to_add,
 const char *matched_pathspec,
 void *payload)
{
 bool found = 0;
 notify_expected *exp = (notify_expected*)payload;
 notify_expected *e;

 GIT_UNUSED(diff_so_far);

 for (e = exp; e->path != ((void*)0); e++) {
  if (strcmp(e->path, delta_to_add->new_file.path))
   continue;

  cl_assert_equal_s(e->matched_pathspec, matched_pathspec);

  found = 1;
  break;
 }

 cl_assert(found);
 return 0;
}
