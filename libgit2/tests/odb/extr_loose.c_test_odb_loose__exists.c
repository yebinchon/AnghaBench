
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_odb ;
struct TYPE_3__ {char* id; } ;


 int GIT_ENOTFOUND ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_odb_exists (int *,int *) ;
 int git_odb_exists_prefix (int *,int *,int *,int) ;
 int git_odb_free (int *) ;
 int git_odb_open (int **,char*) ;
 int git_oid_fromstr (int *,char*) ;
 int git_oid_fromstrp (int *,char*) ;
 int git_oid_streq (int *,char*) ;
 TYPE_1__ one ;
 int write_object_files (TYPE_1__*) ;

void test_odb_loose__exists(void)
{
 git_oid id, id2;
 git_odb *odb;

 write_object_files(&one);
 cl_git_pass(git_odb_open(&odb, "test-objects"));

 cl_git_pass(git_oid_fromstr(&id, one.id));
 cl_assert(git_odb_exists(odb, &id));

 cl_git_pass(git_oid_fromstrp(&id, "8b137891"));
 cl_git_pass(git_odb_exists_prefix(&id2, odb, &id, 8));
 cl_assert_equal_i(0, git_oid_streq(&id2, one.id));


 cl_git_pass(git_oid_fromstr(&id, "8b137891791fe96927ad78e64b0aad7bded08baa"));
 cl_assert(!git_odb_exists(odb, &id));

 cl_git_pass(git_oid_fromstrp(&id, "8b13789a"));
 cl_assert_equal_i(GIT_ENOTFOUND, git_odb_exists_prefix(&id2, odb, &id, 8));

 git_odb_free(odb);
}
