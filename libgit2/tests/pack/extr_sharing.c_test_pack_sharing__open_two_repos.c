
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int val; } ;
struct git_pack_file {TYPE_1__ refcount; } ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_object ;


 int GIT_OBJECT_ANY ;
 int cl_assert_equal_i (int,int ) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git__pack_cache ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,int *,int *,int ) ;
 int git_oid_fromstr (int *,char*) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,int ) ;
 int git_strmap_iterate (void**,int ,size_t*,int *) ;
 int git_strmap_size (int ) ;

void test_pack_sharing__open_two_repos(void)
{
 git_repository *repo1, *repo2;
 git_object *obj1, *obj2;
 git_oid id;
 size_t pos;
 void *data;
 int error;

 cl_git_pass(git_repository_open(&repo1, cl_fixture("testrepo.git")));
 cl_git_pass(git_repository_open(&repo2, cl_fixture("testrepo.git")));

 git_oid_fromstr(&id, "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");

 cl_git_pass(git_object_lookup(&obj1, repo1, &id, GIT_OBJECT_ANY));
 cl_git_pass(git_object_lookup(&obj2, repo2, &id, GIT_OBJECT_ANY));

 pos = 0;
 while ((error = git_strmap_iterate(&data, git__pack_cache, &pos, ((void*)0))) == 0) {
  struct git_pack_file *pack = (struct git_pack_file *) data;

  cl_assert_equal_i(2, pack->refcount.val);
 }

 cl_assert_equal_i(3, git_strmap_size(git__pack_cache));

 git_object_free(obj1);
 git_object_free(obj2);
 git_repository_free(repo1);
 git_repository_free(repo2);


 cl_assert_equal_i(0, git_strmap_size(git__pack_cache));
}
