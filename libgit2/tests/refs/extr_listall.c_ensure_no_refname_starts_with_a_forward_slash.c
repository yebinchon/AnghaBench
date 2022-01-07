
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t count; int * strings; } ;


 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 scalar_t__ git__prefixcmp (int ,char*) ;
 int git_reference_list (TYPE_1__*,int ) ;
 int git_repository_free (int ) ;
 int git_repository_open (int *,char const*) ;
 int git_strarray_free (TYPE_1__*) ;
 TYPE_1__ ref_list ;
 int repo ;

__attribute__((used)) static void ensure_no_refname_starts_with_a_forward_slash(const char *path)
{
 size_t i;

 cl_git_pass(git_repository_open(&repo, path));
 cl_git_pass(git_reference_list(&ref_list, repo));

 cl_assert(ref_list.count > 0);

 for (i = 0; i < ref_list.count; i++)
  cl_assert(git__prefixcmp(ref_list.strings[i], "/") != 0);

 git_strarray_free(&ref_list);
 git_repository_free(repo);
}
