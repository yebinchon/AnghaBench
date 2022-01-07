
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_vector_cmp ;
struct TYPE_3__ {scalar_t__ strcomp; int pathlist; int entry_srch; int prefixcomp; int strncomp; int flags; } ;
typedef TYPE_1__ git_iterator ;


 int GIT_ITERATOR_IGNORE_CASE ;
 int git__prefixcmp ;
 int git__prefixcmp_icase ;
 scalar_t__ git__strcasecmp ;
 scalar_t__ git__strcmp ;
 int git__strncasecmp ;
 int git__strncmp ;
 int git_index_entry_isrch ;
 int git_index_entry_srch ;
 int git_vector_set_cmp (int *,int ) ;

__attribute__((used)) static void iterator_set_ignore_case(git_iterator *iter, bool ignore_case)
{
 if (ignore_case)
  iter->flags |= GIT_ITERATOR_IGNORE_CASE;
 else
  iter->flags &= ~GIT_ITERATOR_IGNORE_CASE;

 iter->strcomp = ignore_case ? git__strcasecmp : git__strcmp;
 iter->strncomp = ignore_case ? git__strncasecmp : git__strncmp;
 iter->prefixcomp = ignore_case ? git__prefixcmp_icase : git__prefixcmp;
 iter->entry_srch = ignore_case ? git_index_entry_isrch : git_index_entry_srch;

 git_vector_set_cmp(&iter->pathlist, (git_vector_cmp)iter->strcomp);
}
