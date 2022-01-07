
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int length; scalar_t__ contents; } ;
typedef TYPE_2__ git_vector ;
struct TYPE_9__ {char** strings; int count; } ;
struct TYPE_11__ {char* start; char* end; TYPE_1__ pathlist; } ;
typedef TYPE_3__ git_iterator_options ;
typedef int git_iterator ;
typedef int git_index ;


 int GIT_INDEX_CAPABILITY_IGNORE_CASE ;
 TYPE_3__ GIT_ITERATOR_OPTIONS_INIT ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int expect_iterator_items (int *,int,int *,int,int *) ;
 int g_repo ;
 int git__strcmp_cb ;
 int git_index_caps (int *) ;
 int git_index_free (int *) ;
 int git_index_set_caps (int *,int) ;
 int git_iterator_for_index (int **,int ,int *,TYPE_3__*) ;
 int git_iterator_free (int *) ;
 int git_repository_index (int **,int ) ;
 int git_vector_free (TYPE_2__*) ;
 int git_vector_init (TYPE_2__*,int,int *) ;
 int git_vector_insert (TYPE_2__*,char*) ;

void test_iterator_index__pathlist_icase(void)
{
 git_iterator *i;
 git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;
 git_index *index;
 int caps;
 git_vector filelist;

 cl_git_pass(git_vector_init(&filelist, 100, &git__strcmp_cb));
 cl_git_pass(git_vector_insert(&filelist, "a"));
 cl_git_pass(git_vector_insert(&filelist, "B"));
 cl_git_pass(git_vector_insert(&filelist, "c"));
 cl_git_pass(git_vector_insert(&filelist, "D"));
 cl_git_pass(git_vector_insert(&filelist, "e"));
 cl_git_pass(git_vector_insert(&filelist, "k/1"));
 cl_git_pass(git_vector_insert(&filelist, "k/a"));
 cl_git_pass(git_vector_insert(&filelist, "L/1"));

 g_repo = cl_git_sandbox_init("icase");

 cl_git_pass(git_repository_index(&index, g_repo));
 caps = git_index_caps(index);


 cl_git_pass(git_index_set_caps(index, caps & ~GIT_INDEX_CAPABILITY_IGNORE_CASE));



 i_opts.pathlist.strings = (char **)filelist.contents;
 i_opts.pathlist.count = filelist.length;

 i_opts.start = "c";
 i_opts.end = "k/D";
 cl_git_pass(git_iterator_for_index(&i, g_repo, index, &i_opts));
 expect_iterator_items(i, 3, ((void*)0), 3, ((void*)0));
 git_iterator_free(i);

 i_opts.start = "k";
 i_opts.end = "k/Z";
 cl_git_pass(git_iterator_for_index(&i, g_repo, index, &i_opts));
 expect_iterator_items(i, 1, ((void*)0), 1, ((void*)0));
 git_iterator_free(i);


 cl_git_pass(git_index_set_caps(index, caps | GIT_INDEX_CAPABILITY_IGNORE_CASE));

 i_opts.start = "c";
 i_opts.end = "k/D";
 cl_git_pass(git_iterator_for_index(&i, g_repo, index, &i_opts));
 expect_iterator_items(i, 5, ((void*)0), 5, ((void*)0));
 git_iterator_free(i);

 i_opts.start = "k";
 i_opts.end = "k/Z";
 cl_git_pass(git_iterator_for_index(&i, g_repo, index, &i_opts));
 expect_iterator_items(i, 2, ((void*)0), 2, ((void*)0));
 git_iterator_free(i);

 cl_git_pass(git_index_set_caps(index, caps));
 git_index_free(index);
 git_vector_free(&filelist);
}
