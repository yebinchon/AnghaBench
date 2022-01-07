
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
typedef int git_index ;


 TYPE_3__ GIT_ITERATOR_OPTIONS_INIT ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int expect_iterator_items (int *,int,int *,int,int *) ;
 int g_repo ;
 int git__strcmp_cb ;
 int git_index_free (int *) ;
 int git_iterator_for_index (int **,int ,int *,TYPE_3__*) ;
 int git_iterator_free (int *) ;
 int git_repository_head_tree (int **,int ) ;
 int git_repository_index (int **,int ) ;
 int git_tree_free (int *) ;
 int git_vector_free (TYPE_2__*) ;
 int git_vector_init (TYPE_2__*,int,int *) ;
 int git_vector_insert (TYPE_2__*,char*) ;

void test_iterator_index__pathlist_with_directory(void)
{
 git_iterator *i;
 git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;
 git_vector filelist;
 git_tree *tree;
 git_index *index;

 g_repo = cl_git_sandbox_init("testrepo2");
 git_repository_head_tree(&tree, g_repo);

 cl_git_pass(git_vector_init(&filelist, 100, &git__strcmp_cb));
 cl_git_pass(git_vector_insert(&filelist, "subdir"));

 i_opts.pathlist.strings = (char **)filelist.contents;
 i_opts.pathlist.count = filelist.length;

 cl_git_pass(git_repository_index(&index, g_repo));
 cl_git_pass(git_iterator_for_index(&i, g_repo, index, &i_opts));
 expect_iterator_items(i, 4, ((void*)0), 4, ((void*)0));
 git_iterator_free(i);

 git_index_free(index);
 git_tree_free(tree);
 git_vector_free(&filelist);
}
