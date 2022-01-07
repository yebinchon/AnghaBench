
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_filter_list ;
typedef int git_filter ;


 int GIT_FILTER_IDENT ;
 int GIT_FILTER_TO_WORKTREE ;
 int add_blob_and_filter (char*,int *,char*) ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_filter_list_free (int *) ;
 int git_filter_list_new (int **,int ,int ,int ) ;
 int git_filter_list_push (int *,int *,int *) ;
 int * git_filter_lookup (int ) ;

void test_filter_ident__to_worktree(void)
{
 git_filter_list *fl;
 git_filter *ident;

 cl_git_pass(git_filter_list_new(
  &fl, g_repo, GIT_FILTER_TO_WORKTREE, 0));

 ident = git_filter_lookup(GIT_FILTER_IDENT);
 cl_assert(ident != ((void*)0));

 cl_git_pass(git_filter_list_push(fl, ident, ((void*)0)));

 add_blob_and_filter(
  "Hello\n$Id$\nFun stuff\n", fl,
  "Hello\n$Id: b69e2387aafcaf73c4de5b9ab59abe27fdadee30 $\nFun stuff\n");
 add_blob_and_filter(
  "Hello\n$Id: Junky$\nFun stuff\n", fl,
  "Hello\n$Id: 45cd107a7102911cb2a7df08404674327fa050b9 $\nFun stuff\n");
 add_blob_and_filter(
  "$Id$\nAt the start\n", fl,
  "$Id: b13415c767abc196fb95bd17070e8c1113e32160 $\nAt the start\n");
 add_blob_and_filter(
  "At the end\n$Id$", fl,
  "At the end\n$Id: 1344925c6bc65b34c5a7b50f86bf688e48e9a272 $");
 add_blob_and_filter(
  "$Id$", fl,
  "$Id: b3f5ebfb5843bc43ceecff6d4f26bb37c615beb1 $");
 add_blob_and_filter(
  "$Id: Some sort of junk goes here$", fl,
  "$Id: ab2dd3853c7c9a4bff55aca2bea077a73c32ac06 $");

 add_blob_and_filter("$Id: ", fl, "$Id: ");
 add_blob_and_filter("$Id", fl, "$Id");
 add_blob_and_filter("$I", fl, "$I");
 add_blob_and_filter("Id$", fl, "Id$");

 git_filter_list_free(fl);
}
