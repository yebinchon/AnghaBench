
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
struct TYPE_11__ {int flags; TYPE_1__ pathlist; } ;
typedef TYPE_3__ git_iterator_options ;
typedef int git_iterator ;


 int GIT_ITERATOR_DONT_IGNORE_CASE ;
 TYPE_3__ GIT_ITERATOR_OPTIONS_INIT ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int expect_iterator_items (int *,size_t,char const**,size_t,char const**) ;
 int g_repo ;
 int git__strcmp_cb ;
 int git_iterator_for_workdir (int **,int ,int *,int *,TYPE_3__*) ;
 int git_iterator_free (int *) ;
 int git_vector_free (TYPE_2__*) ;
 int git_vector_init (TYPE_2__*,int,int *) ;
 int git_vector_insert (TYPE_2__*,char*) ;

void test_iterator_workdir__pathlist_with_directory(void)
{
 git_iterator *i;
 git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;
 git_vector filelist;

 const char *expected[] = { "subdir/README", "subdir/new.txt",
                            "subdir/subdir2/README", "subdir/subdir2/new.txt" };
 size_t expected_len = 4;

 cl_git_pass(git_vector_init(&filelist, 100, &git__strcmp_cb));
 cl_git_pass(git_vector_insert(&filelist, "subdir/"));

 g_repo = cl_git_sandbox_init("testrepo2");

 i_opts.pathlist.strings = (char **)filelist.contents;
 i_opts.pathlist.count = filelist.length;
 i_opts.flags |= GIT_ITERATOR_DONT_IGNORE_CASE;

 cl_git_pass(git_iterator_for_workdir(&i, g_repo, ((void*)0), ((void*)0), &i_opts));
 expect_iterator_items(i, expected_len, expected, expected_len, expected);
 git_iterator_free(i);

 git_vector_free(&filelist);
}
