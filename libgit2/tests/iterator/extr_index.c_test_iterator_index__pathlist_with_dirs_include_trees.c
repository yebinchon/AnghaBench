
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int length; scalar_t__ contents; } ;
typedef TYPE_2__ git_vector ;
struct TYPE_10__ {char** strings; int count; } ;
struct TYPE_12__ {int flags; TYPE_1__ pathlist; } ;
typedef TYPE_3__ git_iterator_options ;
typedef int git_iterator ;
typedef int git_index ;


 int GIT_ITERATOR_DONT_IGNORE_CASE ;
 int GIT_ITERATOR_INCLUDE_TREES ;
 TYPE_3__ GIT_ITERATOR_OPTIONS_INIT ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int expect_iterator_items (int *,size_t,char const**,size_t,char const**) ;
 int g_repo ;
 int git_index_free (int *) ;
 int git_iterator_for_index (int **,int ,int *,TYPE_3__*) ;
 int git_iterator_free (int *) ;
 int git_repository_index (int **,int ) ;
 int git_vector_clear (TYPE_2__*) ;
 int git_vector_free (TYPE_2__*) ;
 int git_vector_init (TYPE_2__*,int,int *) ;
 int git_vector_insert (TYPE_2__*,char*) ;

void test_iterator_index__pathlist_with_dirs_include_trees(void)
{
 git_iterator *i;
 git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;
 git_index *index;
 git_vector filelist;

 const char *expected[] = { "k/", "k/1", "k/B", "k/D", "k/a", "k/c" };
 size_t expected_len = 6;

 cl_git_pass(git_vector_init(&filelist, 5, ((void*)0)));

 g_repo = cl_git_sandbox_init("icase");

 cl_git_pass(git_repository_index(&index, g_repo));

 git_vector_clear(&filelist);
 cl_git_pass(git_vector_insert(&filelist, "k"));

 i_opts.pathlist.strings = (char **)filelist.contents;
 i_opts.pathlist.count = filelist.length;
 i_opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE | GIT_ITERATOR_INCLUDE_TREES;

 cl_git_pass(git_iterator_for_index(&i, g_repo, index, &i_opts));
 expect_iterator_items(i, expected_len, expected, expected_len, expected);
 git_iterator_free(i);

 git_index_free(index);
 git_vector_free(&filelist);
}
