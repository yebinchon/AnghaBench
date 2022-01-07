
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* start; char* end; void* flags; } ;
typedef TYPE_1__ git_iterator_options ;
typedef int git_iterator ;
typedef int git_index ;


 int GIT_INDEX_CAPABILITY_IGNORE_CASE ;
 void* GIT_ITERATOR_DONT_AUTOEXPAND ;
 void* GIT_ITERATOR_INCLUDE_TREES ;
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int expect_iterator_items (int *,int,int *,int,int *) ;
 int g_repo ;
 int git_index_caps (int *) ;
 int git_index_free (int *) ;
 int git_index_set_caps (int *,int) ;
 int git_iterator_for_index (int **,int ,int *,TYPE_1__*) ;
 int git_iterator_free (int *) ;
 int git_repository_index (int **,int ) ;

void test_iterator_index__icase_1(void)
{
 git_iterator *i;
 git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;
 git_index *index;
 int caps;

 g_repo = cl_git_sandbox_init("icase");

 cl_git_pass(git_repository_index(&index, g_repo));
 caps = git_index_caps(index);


 cl_git_pass(git_index_set_caps(index, caps & ~GIT_INDEX_CAPABILITY_IGNORE_CASE));


 i_opts.start = "c";
 i_opts.end = "k/D";
 cl_git_pass(git_iterator_for_index(&i, g_repo, index, &i_opts));
 expect_iterator_items(i, 7, ((void*)0), 7, ((void*)0));
 git_iterator_free(i);

 i_opts.start = "k";
 i_opts.end = "k/Z";
 cl_git_pass(git_iterator_for_index(&i, g_repo, index, &i_opts));
 expect_iterator_items(i, 3, ((void*)0), 3, ((void*)0));
 git_iterator_free(i);


 i_opts.flags = GIT_ITERATOR_INCLUDE_TREES;

 i_opts.start = "c";
 i_opts.end = "k/D";
 cl_git_pass(git_iterator_for_index(&i, g_repo, index, &i_opts));
 expect_iterator_items(i, 8, ((void*)0), 8, ((void*)0));
 git_iterator_free(i);

 i_opts.start = "k";
 i_opts.end = "k/Z";
 cl_git_pass(git_iterator_for_index(&i, g_repo, index, &i_opts));
 expect_iterator_items(i, 4, ((void*)0), 4, ((void*)0));
 git_iterator_free(i);


 i_opts.flags = GIT_ITERATOR_DONT_AUTOEXPAND;

 i_opts.start = "c";
 i_opts.end = "k/D";
 cl_git_pass(git_iterator_for_index(&i, g_repo, index, &i_opts));
 expect_iterator_items(i, 5, ((void*)0), 8, ((void*)0));
 git_iterator_free(i);

 i_opts.start = "k";
 i_opts.end = "k/Z";
 cl_git_pass(git_iterator_for_index(&i, g_repo, index, &i_opts));
 expect_iterator_items(i, 1, ((void*)0), 4, ((void*)0));
 git_iterator_free(i);


 cl_git_pass(git_index_set_caps(index, caps | GIT_INDEX_CAPABILITY_IGNORE_CASE));


 i_opts.flags = 0;

 i_opts.start = "c";
 i_opts.end = "k/D";
 cl_git_pass(git_iterator_for_index(&i, g_repo, index, &i_opts));
 expect_iterator_items(i, 13, ((void*)0), 13, ((void*)0));
 git_iterator_free(i);

 i_opts.start = "k";
 i_opts.end = "k/Z";
 cl_git_pass(git_iterator_for_index(&i, g_repo, index, &i_opts));
 expect_iterator_items(i, 5, ((void*)0), 5, ((void*)0));
 git_iterator_free(i);


 i_opts.flags = GIT_ITERATOR_INCLUDE_TREES;

 i_opts.start = "c";
 i_opts.end = "k/D";
 cl_git_pass(git_iterator_for_index(&i, g_repo, index, &i_opts));
 expect_iterator_items(i, 14, ((void*)0), 14, ((void*)0));
 git_iterator_free(i);

 i_opts.start = "k";
 i_opts.end = "k/Z";
 cl_git_pass(git_iterator_for_index(&i, g_repo, index, &i_opts));
 expect_iterator_items(i, 6, ((void*)0), 6, ((void*)0));
 git_iterator_free(i);


 i_opts.flags = GIT_ITERATOR_DONT_AUTOEXPAND;

 i_opts.start = "c";
 i_opts.end = "k/D";
 cl_git_pass(git_iterator_for_index(&i, g_repo, index, &i_opts));
 expect_iterator_items(i, 9, ((void*)0), 14, ((void*)0));
 git_iterator_free(i);

 i_opts.start = "k";
 i_opts.end = "k/Z";
 cl_git_pass(git_iterator_for_index(&i, g_repo, index, &i_opts));
 expect_iterator_items(i, 1, ((void*)0), 6, ((void*)0));
 git_iterator_free(i);

 cl_git_pass(git_index_set_caps(index, caps));
 git_index_free(index);
}
