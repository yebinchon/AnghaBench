
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ git_iterator_options ;
typedef int git_iterator ;
typedef int git_index ;


 int GIT_ITERATOR_DONT_AUTOEXPAND ;
 int GIT_ITERATOR_INCLUDE_TREES ;
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int expect_iterator_items (int *,int,int *,int,int *) ;
 int g_repo ;
 int git_index_free (int *) ;
 int git_iterator_for_index (int **,int ,int *,TYPE_1__*) ;
 int git_iterator_free (int *) ;
 int git_repository_index (int **,int ) ;

void test_iterator_index__icase_0(void)
{
 git_iterator *i;
 git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;
 git_index *index;

 g_repo = cl_git_sandbox_init("icase");

 cl_git_pass(git_repository_index(&index, g_repo));


 cl_git_pass(git_iterator_for_index(&i, g_repo, index, ((void*)0)));
 expect_iterator_items(i, 20, ((void*)0), 20, ((void*)0));
 git_iterator_free(i);


 i_opts.flags = GIT_ITERATOR_INCLUDE_TREES;
 cl_git_pass(git_iterator_for_index(&i, g_repo, index, &i_opts));
 expect_iterator_items(i, 22, ((void*)0), 22, ((void*)0));
 git_iterator_free(i);


 i_opts.flags = GIT_ITERATOR_DONT_AUTOEXPAND;
 cl_git_pass(git_iterator_for_index(&i, g_repo, index, &i_opts));
 expect_iterator_items(i, 12, ((void*)0), 22, ((void*)0));
 git_iterator_free(i);

 git_index_free(index);
}
