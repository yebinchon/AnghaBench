
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_5__ {int path; int id; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index_conflict_iterator ;


 int CONFLICTS_ONE_ANCESTOR_OID ;
 int CONFLICTS_ONE_OUR_OID ;
 int CONFLICTS_ONE_THEIR_OID ;
 int CONFLICTS_TWO_ANCESTOR_OID ;
 int CONFLICTS_TWO_OUR_OID ;
 int CONFLICTS_TWO_THEIR_OID ;
 scalar_t__ GIT_ITEROVER ;
 int cl_assert (int) ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_git_pass (scalar_t__) ;
 scalar_t__ git__strcmp (int ,char*) ;
 int git_index_conflict_iterator_free (int *) ;
 scalar_t__ git_index_conflict_iterator_new (int **,int ) ;
 scalar_t__ git_index_conflict_next (TYPE_1__ const**,TYPE_1__ const**,TYPE_1__ const**,int *) ;
 int git_oid_fromstr (int *,int ) ;
 int repo_index ;

void test_index_conflicts__iterate(void)
{
 git_index_conflict_iterator *iterator;
 const git_index_entry *conflict_entry[3];
 git_oid oid;

 cl_git_pass(git_index_conflict_iterator_new(&iterator, repo_index));

 cl_git_pass(git_index_conflict_next(&conflict_entry[0], &conflict_entry[1], &conflict_entry[2], iterator));

 git_oid_fromstr(&oid, CONFLICTS_ONE_ANCESTOR_OID);
 cl_assert_equal_oid(&oid, &conflict_entry[0]->id);
 cl_assert(git__strcmp(conflict_entry[0]->path, "conflicts-one.txt") == 0);

 git_oid_fromstr(&oid, CONFLICTS_ONE_OUR_OID);
 cl_assert_equal_oid(&oid, &conflict_entry[1]->id);
 cl_assert(git__strcmp(conflict_entry[0]->path, "conflicts-one.txt") == 0);

 git_oid_fromstr(&oid, CONFLICTS_ONE_THEIR_OID);
 cl_assert_equal_oid(&oid, &conflict_entry[2]->id);
 cl_assert(git__strcmp(conflict_entry[0]->path, "conflicts-one.txt") == 0);

 cl_git_pass(git_index_conflict_next(&conflict_entry[0], &conflict_entry[1], &conflict_entry[2], iterator));

 git_oid_fromstr(&oid, CONFLICTS_TWO_ANCESTOR_OID);
 cl_assert_equal_oid(&oid, &conflict_entry[0]->id);
 cl_assert(git__strcmp(conflict_entry[0]->path, "conflicts-two.txt") == 0);

 git_oid_fromstr(&oid, CONFLICTS_TWO_OUR_OID);
 cl_assert_equal_oid(&oid, &conflict_entry[1]->id);
 cl_assert(git__strcmp(conflict_entry[0]->path, "conflicts-two.txt") == 0);

 git_oid_fromstr(&oid, CONFLICTS_TWO_THEIR_OID);
 cl_assert_equal_oid(&oid, &conflict_entry[2]->id);
 cl_assert(git__strcmp(conflict_entry[0]->path, "conflicts-two.txt") == 0);

 cl_assert(git_index_conflict_next(&conflict_entry[0], &conflict_entry[1], &conflict_entry[2], iterator) == GIT_ITEROVER);

 cl_assert(conflict_entry[0] == ((void*)0));
 cl_assert(conflict_entry[2] == ((void*)0));
 cl_assert(conflict_entry[2] == ((void*)0));

 git_index_conflict_iterator_free(iterator);
}
