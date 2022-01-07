
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


 int GIT_ITERATOR_DONT_AUTOEXPAND ;
 int GIT_ITERATOR_DONT_IGNORE_CASE ;
 TYPE_3__ GIT_ITERATOR_OPTIONS_INIT ;
 int GIT_ITERATOR_STATUS_FILTERED ;
 int GIT_ITERATOR_STATUS_NORMAL ;
 int GIT_ITEROVER ;
 TYPE_2__ GIT_VECTOR_INIT ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_git_sandbox_init (char*) ;
 int cl_must_pass (int ) ;
 int expect_advance_over (int *,char*,int ) ;
 int g_repo ;
 int git_iterator_advance (int *,int *) ;
 int git_iterator_for_workdir (int **,int ,int *,int *,TYPE_3__*) ;
 int git_iterator_free (int *) ;
 int git_vector_free (TYPE_2__*) ;
 int git_vector_insert (TYPE_2__*,char*) ;
 int p_mkdir (char*,int) ;

void test_iterator_workdir__advance_over_with_pathlist(void)
{
 git_vector pathlist = GIT_VECTOR_INIT;
 git_iterator *i;
 git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;

 git_vector_insert(&pathlist, "dirA/subdir1/subdir2/file");
 git_vector_insert(&pathlist, "dirB/subdir1/subdir2");
 git_vector_insert(&pathlist, "dirC/subdir1/nonexistent");
 git_vector_insert(&pathlist, "dirD/subdir1/nonexistent");
 git_vector_insert(&pathlist, "dirD/subdir1/subdir2");
 git_vector_insert(&pathlist, "dirD/nonexistent");

 i_opts.pathlist.strings = (char **)pathlist.contents;
 i_opts.pathlist.count = pathlist.length;
 i_opts.flags |= GIT_ITERATOR_DONT_IGNORE_CASE |
  GIT_ITERATOR_DONT_AUTOEXPAND;

 g_repo = cl_git_sandbox_init("icase");


 cl_must_pass(p_mkdir("icase/dirA", 0777));
 cl_must_pass(p_mkdir("icase/dirA/subdir1", 0777));
 cl_must_pass(p_mkdir("icase/dirA/subdir1/subdir2", 0777));
 cl_git_rewritefile("icase/dirA/subdir1/subdir2/file", "foo!");


 cl_must_pass(p_mkdir("icase/dirB", 0777));
 cl_must_pass(p_mkdir("icase/dirB/subdir1", 0777));
 cl_must_pass(p_mkdir("icase/dirB/subdir1/subdir2", 0777));
 cl_git_rewritefile("icase/dirB/subdir1/subdir2/file", "foo!");






 cl_must_pass(p_mkdir("icase/dirC", 0777));
 cl_must_pass(p_mkdir("icase/dirC/subdir1", 0777));
 cl_must_pass(p_mkdir("icase/dirC/subdir1/subdir2", 0777));
 cl_git_rewritefile("icase/dirC/subdir1/subdir2/file", "foo!");


 cl_must_pass(p_mkdir("icase/dirD", 0777));
 cl_must_pass(p_mkdir("icase/dirD/subdir1", 0777));
 cl_must_pass(p_mkdir("icase/dirD/subdir1/subdir2", 0777));
 cl_git_rewritefile("icase/dirD/subdir1/subdir2/file", "foo!");

 cl_git_pass(git_iterator_for_workdir(&i, g_repo, ((void*)0), ((void*)0), &i_opts));

 expect_advance_over(i, "dirA/", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "dirB/", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "dirC/", GIT_ITERATOR_STATUS_FILTERED);
 expect_advance_over(i, "dirD/", GIT_ITERATOR_STATUS_NORMAL);

 cl_git_fail_with(GIT_ITEROVER, git_iterator_advance(((void*)0), i));
 git_iterator_free(i);
 git_vector_free(&pathlist);
}
