
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_tree ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ git_iterator_options ;
typedef int git_iterator ;


 int GIT_ITERATOR_DONT_AUTOEXPAND ;
 int GIT_ITERATOR_INCLUDE_TREES ;
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int expect_iterator_items (int *,int,int *,int,int *) ;
 int g_repo ;
 int git_iterator_for_tree (int **,int *,TYPE_1__*) ;
 int git_iterator_free (int *) ;
 int git_repository_head_tree (int **,int ) ;
 int git_tree_free (int *) ;

void test_iterator_tree__icase_0(void)
{
 git_iterator *i;
 git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;
 git_tree *head;

 g_repo = cl_git_sandbox_init("icase");

 cl_git_pass(git_repository_head_tree(&head, g_repo));


 cl_git_pass(git_iterator_for_tree(&i, head, ((void*)0)));
 expect_iterator_items(i, 20, ((void*)0), 20, ((void*)0));
 git_iterator_free(i);


 i_opts.flags = GIT_ITERATOR_INCLUDE_TREES;

 cl_git_pass(git_iterator_for_tree(&i, head, &i_opts));
 expect_iterator_items(i, 22, ((void*)0), 22, ((void*)0));
 git_iterator_free(i);


 i_opts.flags = GIT_ITERATOR_DONT_AUTOEXPAND;

 cl_git_pass(git_iterator_for_tree(&i, head, &i_opts));
 expect_iterator_items(i, 12, ((void*)0), 22, ((void*)0));
 git_iterator_free(i);

 git_tree_free(head);
}
