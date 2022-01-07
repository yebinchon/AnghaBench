
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_4__ {int path; } ;
typedef TYPE_1__ git_index_reuc_entry ;


 int ONE_ANCESTOR_OID ;
 int ONE_OUR_OID ;
 int ONE_THEIR_OID ;
 int TWO_ANCESTOR_OID ;
 int TWO_OUR_OID ;
 int TWO_THEIR_OID ;
 int cl_assert (TYPE_1__ const*) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int git_index_clear (int ) ;
 int git_index_reuc_add (int ,char*,int,int *,int,int *,int,int *) ;
 int git_index_reuc_entrycount (int ) ;
 TYPE_1__* git_index_reuc_get_byindex (int ,int) ;
 int git_index_write (int ) ;
 int git_oid_fromstr (int *,int ) ;
 int repo_index ;

void test_index_reuc__write(void)
{
 git_oid ancestor_oid, our_oid, their_oid;
 const git_index_reuc_entry *reuc;

 git_index_clear(repo_index);


 git_oid_fromstr(&ancestor_oid, TWO_ANCESTOR_OID);
 git_oid_fromstr(&our_oid, TWO_OUR_OID);
 git_oid_fromstr(&their_oid, TWO_THEIR_OID);

 cl_git_pass(git_index_reuc_add(repo_index, "two.txt",
  0100644, &ancestor_oid,
  0100644, &our_oid,
  0100644, &their_oid));

 git_oid_fromstr(&ancestor_oid, ONE_ANCESTOR_OID);
 git_oid_fromstr(&our_oid, ONE_OUR_OID);
 git_oid_fromstr(&their_oid, ONE_THEIR_OID);

 cl_git_pass(git_index_reuc_add(repo_index, "one.txt",
  0100644, &ancestor_oid,
  0100644, &our_oid,
  0100644, &their_oid));

 cl_git_pass(git_index_write(repo_index));
 cl_assert_equal_i(2, git_index_reuc_entrycount(repo_index));


 cl_assert(reuc = git_index_reuc_get_byindex(repo_index, 0));
 cl_assert_equal_s("one.txt", reuc->path);

 cl_assert(reuc = git_index_reuc_get_byindex(repo_index, 1));
 cl_assert_equal_s("two.txt", reuc->path);
}
