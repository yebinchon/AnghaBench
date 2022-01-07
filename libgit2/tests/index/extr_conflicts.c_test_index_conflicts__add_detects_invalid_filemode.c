
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* path; int mode; int id; } ;
typedef TYPE_1__ git_index_entry ;


 int CONFLICTS_ONE_ANCESTOR_OID ;
 int CONFLICTS_ONE_OUR_OID ;
 int CONFLICTS_ONE_THEIR_OID ;
 int GIT_INDEX_ENTRY_STAGE_SET (TYPE_1__*,int) ;
 int cl_assert (int) ;
 int cl_git_fail (int ) ;
 int git_index_conflict_add (int ,TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int git_index_entrycount (int ) ;
 int git_oid_fromstr (int *,int ) ;
 int memset (TYPE_1__*,int,int) ;
 int repo_index ;

void test_index_conflicts__add_detects_invalid_filemode(void)
{
 git_index_entry ancestor_entry, our_entry, their_entry;
 git_index_entry *conflict_entry[3];
 int i;

 cl_assert(git_index_entrycount(repo_index) == 8);

 memset(&ancestor_entry, 0x0, sizeof(git_index_entry));
 memset(&our_entry, 0x0, sizeof(git_index_entry));
 memset(&their_entry, 0x0, sizeof(git_index_entry));

 conflict_entry[0] = &ancestor_entry;
 conflict_entry[1] = &our_entry;
 conflict_entry[2] = &their_entry;

 for (i = 0; i < 3; i++) {
  ancestor_entry.path = "test-one.txt";
  ancestor_entry.mode = 0100644;
  GIT_INDEX_ENTRY_STAGE_SET(&ancestor_entry, 3);
  git_oid_fromstr(&ancestor_entry.id, CONFLICTS_ONE_ANCESTOR_OID);

  our_entry.path = "test-one.txt";
  our_entry.mode = 0100644;
  GIT_INDEX_ENTRY_STAGE_SET(&our_entry, 1);
  git_oid_fromstr(&our_entry.id, CONFLICTS_ONE_OUR_OID);

  their_entry.path = "test-one.txt";
  their_entry.mode = 0100644;
  GIT_INDEX_ENTRY_STAGE_SET(&their_entry, 2);
  git_oid_fromstr(&their_entry.id, CONFLICTS_ONE_THEIR_OID);


  conflict_entry[i]->mode = 027431745;

  cl_git_fail(git_index_conflict_add(repo_index, &ancestor_entry, &our_entry, &their_entry));
 }

 cl_assert(git_index_entrycount(repo_index) == 8);
}
