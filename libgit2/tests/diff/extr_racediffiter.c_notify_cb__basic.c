
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int path; } ;
struct TYPE_6__ {int status; TYPE_1__ new_file; } ;
typedef TYPE_2__ git_diff_delta ;
typedef char git_diff ;
struct TYPE_7__ {int t; scalar_t__ path; } ;
typedef TYPE_3__ basic_payload ;


 int GIT_ENOTFOUND ;
 int GIT_UNUSED (char const*) ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int ,int ) ;
 scalar_t__ strcmp (scalar_t__,int ) ;

__attribute__((used)) static int notify_cb__basic(
 const git_diff *diff_so_far,
 const git_diff_delta *delta_to_add,
 const char *matched_pathspec,
 void *payload)
{
 basic_payload *exp = (basic_payload *)payload;
 basic_payload *e;

 GIT_UNUSED(diff_so_far);
 GIT_UNUSED(matched_pathspec);

 for (e = exp; e->path; e++) {
  if (strcmp(e->path, delta_to_add->new_file.path) == 0) {
   cl_assert_equal_i(e->t, delta_to_add->status);
   return 0;
  }
 }
 cl_assert(0);
 return GIT_ENOTFOUND;
}
