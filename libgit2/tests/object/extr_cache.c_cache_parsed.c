
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_object ;
struct TYPE_2__ {scalar_t__ type; int * sha; } ;


 int GIT_OBJECT_ANY ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 TYPE_1__* g_data ;
 int g_repo ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,int ,int *,int ) ;
 scalar_t__ git_object_type (int *) ;
 int git_oid_fromstr (int *,int *) ;

__attribute__((used)) static void *cache_parsed(void *arg)
{
 int i;
 git_oid oid;
 git_object *obj;

 for (i = ((int *)arg)[1]; g_data[i].sha != ((void*)0); i += 2) {
  cl_git_pass(git_oid_fromstr(&oid, g_data[i].sha));
  cl_git_pass(git_object_lookup(&obj, g_repo, &oid, GIT_OBJECT_ANY));
  cl_assert(g_data[i].type == git_object_type(obj));
  git_object_free(obj);
 }

 for (i = 0; i < ((int *)arg)[1]; i += 2) {
  cl_git_pass(git_oid_fromstr(&oid, g_data[i].sha));
  cl_git_pass(git_object_lookup(&obj, g_repo, &oid, GIT_OBJECT_ANY));
  cl_assert(g_data[i].type == git_object_type(obj));
  git_object_free(obj);
 }

 return arg;
}
