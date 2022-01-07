
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int length; scalar_t__ contents; } ;
typedef TYPE_2__ git_vector ;
typedef int git_tree ;
struct TYPE_9__ {char** strings; int count; } ;
struct TYPE_11__ {TYPE_1__ pathlist; } ;
typedef TYPE_3__ git_iterator_options ;
typedef int git_iterator ;
typedef int git_index_entry ;


 TYPE_3__ GIT_ITERATOR_OPTIONS_INIT ;
 int GIT_ITEROVER ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git__strcmp_cb ;
 int git_iterator_current (int const**,int *) ;
 int git_iterator_for_tree (int **,int *,TYPE_3__*) ;
 int git_iterator_free (int *) ;
 int git_repository_head_tree (int **,int ) ;
 int git_tree_free (int *) ;
 int git_vector_free (TYPE_2__*) ;
 int git_vector_init (TYPE_2__*,int,int *) ;
 int git_vector_insert (TYPE_2__*,char*) ;

void test_iterator_tree__pathlist_no_match(void)
{
 git_iterator *i;
 git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;
 git_vector filelist;
 git_tree *tree;
 const git_index_entry *entry;

 g_repo = cl_git_sandbox_init("testrepo2");
 git_repository_head_tree(&tree, g_repo);

 cl_git_pass(git_vector_init(&filelist, 100, &git__strcmp_cb));
 cl_git_pass(git_vector_insert(&filelist, "nonexistent/"));

 i_opts.pathlist.strings = (char **)filelist.contents;
 i_opts.pathlist.count = filelist.length;

 cl_git_pass(git_iterator_for_tree(&i, tree, &i_opts));
 cl_assert_equal_i(GIT_ITEROVER, git_iterator_current(&entry, i));
 git_iterator_free(i);

 git_tree_free(tree);
 git_vector_free(&filelist);
}
