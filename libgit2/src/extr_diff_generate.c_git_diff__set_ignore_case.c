
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {int deltas; int entrycomp; int pfxcomp; int strncomp; int strcomp; TYPE_1__ opts; } ;
typedef TYPE_2__ git_diff ;


 int GIT_DIFF_IGNORE_CASE ;
 int git__prefixcmp ;
 int git__prefixcmp_icase ;
 int git__strcasecmp ;
 int git__strcmp ;
 int git__strncasecmp ;
 int git__strncmp ;
 int git_diff__entry_cmp ;
 int git_diff__entry_icmp ;
 int git_diff_delta__casecmp ;
 int git_diff_delta__cmp ;
 int git_vector_set_cmp (int *,int ) ;
 int git_vector_sort (int *) ;

void git_diff__set_ignore_case(git_diff *diff, bool ignore_case)
{
 if (!ignore_case) {
  diff->opts.flags &= ~GIT_DIFF_IGNORE_CASE;

  diff->strcomp = git__strcmp;
  diff->strncomp = git__strncmp;
  diff->pfxcomp = git__prefixcmp;
  diff->entrycomp = git_diff__entry_cmp;

  git_vector_set_cmp(&diff->deltas, git_diff_delta__cmp);
 } else {
  diff->opts.flags |= GIT_DIFF_IGNORE_CASE;

  diff->strcomp = git__strcasecmp;
  diff->strncomp = git__strncasecmp;
  diff->pfxcomp = git__prefixcmp_icase;
  diff->entrycomp = git_diff__entry_icmp;

  git_vector_set_cmp(&diff->deltas, git_diff_delta__casecmp);
 }

 git_vector_sort(&diff->deltas);
}
