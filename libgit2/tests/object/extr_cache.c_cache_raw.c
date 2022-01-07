
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_odb_object ;
typedef int git_odb ;
struct TYPE_2__ {scalar_t__ type; int * sha; } ;


 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 TYPE_1__* g_data ;
 int g_repo ;
 int git_odb_free (int *) ;
 int git_odb_object_free (int *) ;
 scalar_t__ git_odb_object_type (int *) ;
 int git_odb_read (int **,int *,int *) ;
 int git_oid_fromstr (int *,int *) ;
 int git_repository_odb (int **,int ) ;

__attribute__((used)) static void *cache_raw(void *arg)
{
 int i;
 git_oid oid;
 git_odb *odb;
 git_odb_object *odb_obj;

 cl_git_pass(git_repository_odb(&odb, g_repo));

 for (i = ((int *)arg)[1]; g_data[i].sha != ((void*)0); i += 2) {
  cl_git_pass(git_oid_fromstr(&oid, g_data[i].sha));
  cl_git_pass(git_odb_read(&odb_obj, odb, &oid));
  cl_assert(g_data[i].type == git_odb_object_type(odb_obj));
  git_odb_object_free(odb_obj);
 }

 for (i = 0; i < ((int *)arg)[1]; i += 2) {
  cl_git_pass(git_oid_fromstr(&oid, g_data[i].sha));
  cl_git_pass(git_odb_read(&odb_obj, odb, &oid));
  cl_assert(g_data[i].type == git_odb_object_type(odb_obj));
  git_odb_object_free(odb_obj);
 }

 git_odb_free(odb);

 return arg;
}
