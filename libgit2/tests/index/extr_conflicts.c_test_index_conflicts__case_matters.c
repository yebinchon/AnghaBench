
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_10__ {char const* path; int id; void* mode; } ;
typedef TYPE_1__ git_index_entry ;


 int CONFLICTS_ONE_ANCESTOR_OID ;
 int CONFLICTS_ONE_OUR_OID ;
 int CONFLICTS_ONE_THEIR_OID ;
 int CONFLICTS_TWO_ANCESTOR_OID ;
 int CONFLICTS_TWO_OUR_OID ;
 int CONFLICTS_TWO_THEIR_OID ;
 void* GIT_FILEMODE_BLOB ;
 int GIT_INDEX_ENTRY_STAGE_SET (TYPE_1__*,int ) ;
 int GIT_INDEX_STAGE_ANCESTOR ;
 int GIT_INDEX_STAGE_OURS ;
 int GIT_INDEX_STAGE_THEIRS ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_assert_equal_s (char const*,char const*) ;
 int cl_git_pass (int ) ;
 int cl_repo_get_bool (int ,char*) ;
 int git_index_conflict_add (int ,TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int git_index_conflict_get (TYPE_1__ const**,TYPE_1__ const**,TYPE_1__ const**,int ,char const*) ;
 int git_oid_fromstr (int *,int ) ;
 int memset (TYPE_1__*,int,int) ;
 int repo ;
 int repo_index ;

void test_index_conflicts__case_matters(void)
{
 const git_index_entry *conflict_entry[3];
 git_oid oid;
 const char *upper_case = "DIFFERS-IN-CASE.TXT";
 const char *mixed_case = "Differs-In-Case.txt";
 const char *correct_case;
 bool ignorecase = cl_repo_get_bool(repo, "core.ignorecase");

 git_index_entry ancestor_entry, our_entry, their_entry;

 memset(&ancestor_entry, 0x0, sizeof(git_index_entry));
 memset(&our_entry, 0x0, sizeof(git_index_entry));
 memset(&their_entry, 0x0, sizeof(git_index_entry));

 ancestor_entry.path = upper_case;
 GIT_INDEX_ENTRY_STAGE_SET(&ancestor_entry, GIT_INDEX_STAGE_ANCESTOR);
 git_oid_fromstr(&ancestor_entry.id, CONFLICTS_ONE_ANCESTOR_OID);
 ancestor_entry.mode = GIT_FILEMODE_BLOB;

 our_entry.path = upper_case;
 GIT_INDEX_ENTRY_STAGE_SET(&our_entry, GIT_INDEX_STAGE_OURS);
 git_oid_fromstr(&our_entry.id, CONFLICTS_ONE_OUR_OID);
 our_entry.mode = GIT_FILEMODE_BLOB;

 their_entry.path = upper_case;
 GIT_INDEX_ENTRY_STAGE_SET(&their_entry, GIT_INDEX_STAGE_THEIRS);
 git_oid_fromstr(&their_entry.id, CONFLICTS_ONE_THEIR_OID);
 their_entry.mode = GIT_FILEMODE_BLOB;

 cl_git_pass(git_index_conflict_add(repo_index,
  &ancestor_entry, &our_entry, &their_entry));

 ancestor_entry.path = mixed_case;
 GIT_INDEX_ENTRY_STAGE_SET(&ancestor_entry, GIT_INDEX_STAGE_ANCESTOR);
 git_oid_fromstr(&ancestor_entry.id, CONFLICTS_TWO_ANCESTOR_OID);
 ancestor_entry.mode = GIT_FILEMODE_BLOB;

 our_entry.path = mixed_case;
 GIT_INDEX_ENTRY_STAGE_SET(&ancestor_entry, GIT_INDEX_STAGE_ANCESTOR);
 git_oid_fromstr(&our_entry.id, CONFLICTS_TWO_OUR_OID);
 ancestor_entry.mode = GIT_FILEMODE_BLOB;

 their_entry.path = mixed_case;
 GIT_INDEX_ENTRY_STAGE_SET(&their_entry, GIT_INDEX_STAGE_THEIRS);
 git_oid_fromstr(&their_entry.id, CONFLICTS_TWO_THEIR_OID);
 their_entry.mode = GIT_FILEMODE_BLOB;

 cl_git_pass(git_index_conflict_add(repo_index,
  &ancestor_entry, &our_entry, &their_entry));

 cl_git_pass(git_index_conflict_get(&conflict_entry[0], &conflict_entry[1],
  &conflict_entry[2], repo_index, upper_case));





 if (ignorecase)
  correct_case = mixed_case;
 else
  correct_case = upper_case;

 cl_assert_equal_s(correct_case, conflict_entry[0]->path);
 git_oid_fromstr(&oid, ignorecase ? CONFLICTS_TWO_ANCESTOR_OID : CONFLICTS_ONE_ANCESTOR_OID);
 cl_assert_equal_oid(&oid, &conflict_entry[0]->id);

 cl_assert_equal_s(correct_case, conflict_entry[1]->path);
 git_oid_fromstr(&oid, ignorecase ? CONFLICTS_TWO_OUR_OID : CONFLICTS_ONE_OUR_OID);
 cl_assert_equal_oid(&oid, &conflict_entry[1]->id);

 cl_assert_equal_s(correct_case, conflict_entry[2]->path);
 git_oid_fromstr(&oid, ignorecase ? CONFLICTS_TWO_THEIR_OID : CONFLICTS_ONE_THEIR_OID);
 cl_assert_equal_oid(&oid, &conflict_entry[2]->id);

 cl_git_pass(git_index_conflict_get(&conflict_entry[0], &conflict_entry[1],
  &conflict_entry[2], repo_index, mixed_case));

 cl_assert_equal_s(mixed_case, conflict_entry[0]->path);
 git_oid_fromstr(&oid, CONFLICTS_TWO_ANCESTOR_OID);
 cl_assert_equal_oid(&oid, &conflict_entry[0]->id);

 cl_assert_equal_s(mixed_case, conflict_entry[1]->path);
 git_oid_fromstr(&oid, CONFLICTS_TWO_OUR_OID);
 cl_assert_equal_oid(&oid, &conflict_entry[1]->id);

 cl_assert_equal_s(mixed_case, conflict_entry[2]->path);
 git_oid_fromstr(&oid, CONFLICTS_TWO_THEIR_OID);
 cl_assert_equal_oid(&oid, &conflict_entry[2]->id);
}
