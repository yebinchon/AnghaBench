
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* path; int mode; int id; } ;
typedef TYPE_1__ git_index_entry ;


 int CONFLICTS_ONE_ANCESTOR_OID ;
 int GIT_INDEX_ENTRY_STAGE_SET (TYPE_1__*,int) ;
 int cl_assert (int) ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_git_pass (int ) ;
 int git_index_conflict_add (int ,TYPE_1__*,int *,int *) ;
 int git_index_conflict_get (TYPE_1__ const**,TYPE_1__ const**,TYPE_1__ const**,int ,char*) ;
 int git_index_entrycount (int ) ;
 int git_oid_fromstr (int *,int ) ;
 int memset (TYPE_1__*,int,int) ;
 int repo_index ;

void test_index_conflicts__partial(void)
{
 git_index_entry ancestor_entry, our_entry, their_entry;
 const git_index_entry *conflict_entry[3];

 cl_assert(git_index_entrycount(repo_index) == 8);

 memset(&ancestor_entry, 0x0, sizeof(git_index_entry));
 memset(&our_entry, 0x0, sizeof(git_index_entry));
 memset(&their_entry, 0x0, sizeof(git_index_entry));

 ancestor_entry.path = "test-one.txt";
 ancestor_entry.mode = 0100644;
 GIT_INDEX_ENTRY_STAGE_SET(&ancestor_entry, 1);
 git_oid_fromstr(&ancestor_entry.id, CONFLICTS_ONE_ANCESTOR_OID);

 cl_git_pass(git_index_conflict_add(repo_index, &ancestor_entry, ((void*)0), ((void*)0)));
 cl_assert(git_index_entrycount(repo_index) == 9);

 cl_git_pass(git_index_conflict_get(&conflict_entry[0], &conflict_entry[1],
  &conflict_entry[2], repo_index, "test-one.txt"));

 cl_assert_equal_oid(&ancestor_entry.id, &conflict_entry[0]->id);
 cl_assert(conflict_entry[1] == ((void*)0));
 cl_assert(conflict_entry[2] == ((void*)0));
}
