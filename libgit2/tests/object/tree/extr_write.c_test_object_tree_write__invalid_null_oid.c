
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_treebuilder ;
struct TYPE_5__ {int member_0; } ;
struct TYPE_6__ {TYPE_1__ member_0; } ;
typedef TYPE_2__ git_oid ;
struct TYPE_7__ {int message; } ;


 int GIT_FILEMODE_BLOB ;
 int cl_assert (int ) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 TYPE_4__* git_error_last () ;
 int git_treebuilder_free (int *) ;
 int git_treebuilder_insert (int *,int *,char*,TYPE_2__*,int ) ;
 int git_treebuilder_new (int **,int ,int *) ;
 int * strstr (int ,char*) ;

void test_object_tree_write__invalid_null_oid(void)
{
 git_treebuilder *bld;
 git_oid null_oid = {{0}};

 cl_git_pass(git_treebuilder_new(&bld, g_repo, ((void*)0)));
 cl_git_fail(git_treebuilder_insert(((void*)0), bld, "null_oid_file", &null_oid, GIT_FILEMODE_BLOB));
 cl_assert(git_error_last() && strstr(git_error_last()->message, "null OID") != ((void*)0));

 git_treebuilder_free(bld);
}
