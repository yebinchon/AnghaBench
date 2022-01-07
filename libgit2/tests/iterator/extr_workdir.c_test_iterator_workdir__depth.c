
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ git_iterator_options ;
typedef int git_iterator ;


 int GIT_ITERATOR_INCLUDE_TREES ;
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ;
 int build_workdir_tree (char*,int,int) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int expect_iterator_items (int *,int,int *,int,int *) ;
 int g_repo ;
 int git_iterator_for_workdir (int **,int ,int *,int *,TYPE_1__*) ;
 int git_iterator_free (int *) ;

void test_iterator_workdir__depth(void)
{
 git_iterator *iter;
 git_iterator_options iter_opts = GIT_ITERATOR_OPTIONS_INIT;

 g_repo = cl_git_sandbox_init("icase");

 build_workdir_tree("icase", 10, 10);
 build_workdir_tree("icase/DIR01/sUB01", 50, 0);
 build_workdir_tree("icase/dir02/sUB01", 50, 0);


 cl_git_pass(git_iterator_for_workdir(&iter, g_repo, ((void*)0), ((void*)0), &iter_opts));
 expect_iterator_items(iter, 125, ((void*)0), 125, ((void*)0));
 git_iterator_free(iter);


 iter_opts.flags = GIT_ITERATOR_INCLUDE_TREES;
 cl_git_pass(git_iterator_for_workdir(&iter, g_repo, ((void*)0), ((void*)0), &iter_opts));
 expect_iterator_items(iter, 337, ((void*)0), 337, ((void*)0));
 git_iterator_free(iter);
}
