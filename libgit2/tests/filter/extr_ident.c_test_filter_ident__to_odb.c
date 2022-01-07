
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_filter_list ;
typedef int git_filter ;


 int GIT_FILTER_IDENT ;
 int GIT_FILTER_TO_ODB ;
 int add_blob_and_filter (char*,int *,char*) ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_filter_list_free (int *) ;
 int git_filter_list_new (int **,int ,int ,int ) ;
 int git_filter_list_push (int *,int *,int *) ;
 int * git_filter_lookup (int ) ;

void test_filter_ident__to_odb(void)
{
 git_filter_list *fl;
 git_filter *ident;

 cl_git_pass(git_filter_list_new(
  &fl, g_repo, GIT_FILTER_TO_ODB, 0));

 ident = git_filter_lookup(GIT_FILTER_IDENT);
 cl_assert(ident != ((void*)0));

 cl_git_pass(git_filter_list_push(fl, ident, ((void*)0)));

 add_blob_and_filter(
  "Hello\n$Id$\nFun stuff\n",
  fl, "Hello\n$Id$\nFun stuff\n");
 add_blob_and_filter(
  "Hello\n$Id: b69e2387aafcaf73c4de5b9ab59abe27fdadee30$\nFun stuff\n",
  fl, "Hello\n$Id$\nFun stuff\n");
 add_blob_and_filter(
  "Hello\n$Id: Any junk you may have left here$\nFun stuff\n",
  fl, "Hello\n$Id$\nFun stuff\n");
 add_blob_and_filter(
  "Hello\n$Id:$\nFun stuff\n",
  fl, "Hello\n$Id$\nFun stuff\n");
 add_blob_and_filter(
  "Hello\n$Id:x$\nFun stuff\n",
  fl, "Hello\n$Id$\nFun stuff\n");

 add_blob_and_filter(
  "$Id$\nAt the start\n", fl, "$Id$\nAt the start\n");
 add_blob_and_filter(
  "$Id: lots of random text that should be removed from here$\nAt the start\n", fl, "$Id$\nAt the start\n");
 add_blob_and_filter(
  "$Id: lots of random text that should not be removed without a terminator\nAt the start\n", fl, "$Id: lots of random text that should not be removed without a terminator\nAt the start\n");

 add_blob_and_filter(
  "At the end\n$Id$", fl, "At the end\n$Id$");
 add_blob_and_filter(
  "At the end\n$Id:$", fl, "At the end\n$Id$");
 add_blob_and_filter(
  "At the end\n$Id:asdfasdf$", fl, "At the end\n$Id$");
 add_blob_and_filter(
  "At the end\n$Id", fl, "At the end\n$Id");
 add_blob_and_filter(
  "At the end\n$IddI", fl, "At the end\n$IddI");

 add_blob_and_filter("$Id$", fl, "$Id$");
 add_blob_and_filter("$Id: any$", fl, "$Id$");
 add_blob_and_filter("$Id: any long stuff goes here you see$", fl, "$Id$");
 add_blob_and_filter("$Id: ", fl, "$Id: ");
 add_blob_and_filter("$Id", fl, "$Id");
 add_blob_and_filter("$I", fl, "$I");
 add_blob_and_filter("Id$", fl, "Id$");

 git_filter_list_free(fl);
}
