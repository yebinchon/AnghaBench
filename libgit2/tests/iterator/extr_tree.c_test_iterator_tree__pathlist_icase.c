
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
struct TYPE_11__ {char* start; char* end; int flags; TYPE_1__ pathlist; } ;
typedef TYPE_3__ git_iterator_options ;
typedef int git_iterator ;


 int GIT_ITERATOR_DONT_IGNORE_CASE ;
 int GIT_ITERATOR_IGNORE_CASE ;
 TYPE_3__ GIT_ITERATOR_OPTIONS_INIT ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int expect_iterator_items (int *,int,int *,int,int *) ;
 int g_repo ;
 int git__strcmp_cb ;
 int git_iterator_for_tree (int **,int *,TYPE_3__*) ;
 int git_iterator_free (int *) ;
 int git_repository_head_tree (int **,int ) ;
 int git_tree_free (int *) ;
 int git_vector_free (TYPE_2__*) ;
 int git_vector_init (TYPE_2__*,int,int *) ;
 int git_vector_insert (TYPE_2__*,char*) ;

void test_iterator_tree__pathlist_icase(void)
{
 git_iterator *i;
 git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;
 git_vector filelist;
 git_tree *tree;

 cl_git_pass(git_vector_init(&filelist, 100, &git__strcmp_cb));
 cl_git_pass(git_vector_insert(&filelist, "a"));
 cl_git_pass(git_vector_insert(&filelist, "B"));
 cl_git_pass(git_vector_insert(&filelist, "c"));
 cl_git_pass(git_vector_insert(&filelist, "D"));
 cl_git_pass(git_vector_insert(&filelist, "e"));
 cl_git_pass(git_vector_insert(&filelist, "k.a"));
 cl_git_pass(git_vector_insert(&filelist, "k.b"));
 cl_git_pass(git_vector_insert(&filelist, "k/1"));
 cl_git_pass(git_vector_insert(&filelist, "k/a"));
 cl_git_pass(git_vector_insert(&filelist, "kZZZZ"));
 cl_git_pass(git_vector_insert(&filelist, "L/1"));

 g_repo = cl_git_sandbox_init("icase");
 git_repository_head_tree(&tree, g_repo);

 i_opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;
 i_opts.pathlist.strings = (char **)filelist.contents;
 i_opts.pathlist.count = filelist.length;

 i_opts.start = "c";
 i_opts.end = "k/D";
 cl_git_pass(git_iterator_for_tree(&i, tree, &i_opts));
 expect_iterator_items(i, 3, ((void*)0), 3, ((void*)0));
 git_iterator_free(i);

 i_opts.start = "k";
 i_opts.end = "k/Z";
 cl_git_pass(git_iterator_for_tree(&i, tree, &i_opts));
 expect_iterator_items(i, 1, ((void*)0), 1, ((void*)0));
 git_iterator_free(i);

 i_opts.flags = GIT_ITERATOR_IGNORE_CASE;

 i_opts.start = "c";
 i_opts.end = "k/D";
 cl_git_pass(git_iterator_for_tree(&i, tree, &i_opts));
 expect_iterator_items(i, 5, ((void*)0), 5, ((void*)0));
 git_iterator_free(i);

 i_opts.start = "k";
 i_opts.end = "k/Z";
 cl_git_pass(git_iterator_for_tree(&i, tree, &i_opts));
 expect_iterator_items(i, 2, ((void*)0), 2, ((void*)0));
 git_iterator_free(i);

 git_vector_free(&filelist);
 git_tree_free(tree);
}
