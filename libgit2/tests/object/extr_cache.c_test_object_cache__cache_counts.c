
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_odb_object ;
typedef int git_odb ;
typedef int git_object ;
struct TYPE_7__ {scalar_t__ type; scalar_t__ size; int * sha; } ;
struct TYPE_6__ {int objects; } ;


 int GIT_OBJECT_ANY ;
 scalar_t__ GIT_OBJECT_BLOB ;
 int GIT_OPT_SET_CACHE_OBJECT_LIMIT ;
 scalar_t__ cache_limit ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,int) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 TYPE_5__* g_data ;
 TYPE_1__* g_repo ;
 scalar_t__ git_cache_size (int *) ;
 int git_libgit2_opts (int ,scalar_t__,scalar_t__) ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,TYPE_1__*,int *,int ) ;
 scalar_t__ git_object_type (int *) ;
 int git_odb_free (int *) ;
 int git_odb_object_free (int *) ;
 scalar_t__ git_odb_object_type (int *) ;
 int git_odb_read (int **,int *,int *) ;
 int git_oid_fromstr (int *,int *) ;
 int git_repository_odb (int **,TYPE_1__*) ;
 int git_repository_open (TYPE_1__**,int ) ;
 scalar_t__ object_type ;

void test_object_cache__cache_counts(void)
{
 int i, start, nonmatching = 0;
 git_oid oid;
 git_odb_object *odb_obj;
 git_object *obj;
 git_odb *odb;

 git_libgit2_opts(GIT_OPT_SET_CACHE_OBJECT_LIMIT, object_type, cache_limit);

 cl_git_pass(git_repository_open(&g_repo, cl_fixture("testrepo.git")));
 cl_git_pass(git_repository_odb(&odb, g_repo));

 start = (int)git_cache_size(&g_repo->objects);

 for (i = 0; g_data[i].sha != ((void*)0); ++i) {
  int count = (int)git_cache_size(&g_repo->objects);

  cl_git_pass(git_oid_fromstr(&oid, g_data[i].sha));


  if ((i & 1) == 0) {
   cl_git_pass(git_odb_read(&odb_obj, odb, &oid));
   cl_assert(g_data[i].type == git_odb_object_type(odb_obj));
   git_odb_object_free(odb_obj);
  } else {
   cl_git_pass(git_object_lookup(&obj, g_repo, &oid, GIT_OBJECT_ANY));
   cl_assert(g_data[i].type == git_object_type(obj));
   git_object_free(obj);
  }

  if ((g_data[i].type == object_type && g_data[i].size >= cache_limit) ||
      (g_data[i].type != object_type && g_data[i].type == GIT_OBJECT_BLOB))
   cl_assert_equal_i(count, (int)git_cache_size(&g_repo->objects));
  else {
   cl_assert_equal_i(count + 1, (int)git_cache_size(&g_repo->objects));
   nonmatching++;
  }
 }

 cl_assert_equal_i(nonmatching, (int)git_cache_size(&g_repo->objects) - start);

 for (i = 0; g_data[i].sha != ((void*)0); ++i) {
  int count = (int)git_cache_size(&g_repo->objects);

  cl_git_pass(git_oid_fromstr(&oid, g_data[i].sha));
  cl_git_pass(git_object_lookup(&obj, g_repo, &oid, GIT_OBJECT_ANY));
  cl_assert(g_data[i].type == git_object_type(obj));
  git_object_free(obj);

  cl_assert_equal_i(count, (int)git_cache_size(&g_repo->objects));
 }

 git_odb_free(odb);
}
