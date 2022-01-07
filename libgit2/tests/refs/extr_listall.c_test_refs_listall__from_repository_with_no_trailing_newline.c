
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ count; } ;


 int cl_assert (int) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_reference_list (TYPE_1__*,int ) ;
 int git_repository_free (int ) ;
 int git_repository_open (int *,int ) ;
 int git_strarray_free (TYPE_1__*) ;
 TYPE_1__ ref_list ;
 int repo ;

void test_refs_listall__from_repository_with_no_trailing_newline(void)
{
 cl_git_pass(git_repository_open(&repo, cl_fixture("bad_tag.git")));
 cl_git_pass(git_reference_list(&ref_list, repo));

 cl_assert(ref_list.count > 0);

 git_strarray_free(&ref_list);
 git_repository_free(repo);
}
