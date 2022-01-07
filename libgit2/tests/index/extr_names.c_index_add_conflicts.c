
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int member_0; } ;
struct TYPE_6__ {char const* path; int id; void* mode; TYPE_1__ member_0; } ;
typedef TYPE_2__ git_index_entry ;


 size_t ARRAY_SIZE (char const***) ;
 void* GIT_FILEMODE_BLOB ;
 int GIT_INDEX_ENTRY_STAGE_SET (TYPE_2__*,int ) ;
 int GIT_INDEX_STAGE_ANCESTOR ;
 int GIT_INDEX_STAGE_OURS ;
 int GIT_INDEX_STAGE_THEIRS ;
 int cl_git_pass (int ) ;
 int git_index_add (int ,TYPE_2__*) ;
 int git_oid_fromstr (int *,char*) ;
 int repo_index ;

__attribute__((used)) static void index_add_conflicts(void)
{
 git_index_entry entry = {{0}};
 const char *paths[][3] = {
  { "ancestor", "ours", "theirs" },
  { "ancestor2", "ours2", "theirs2" },
  { "ancestor3", "ours3", "theirs3" } };
 const char **conflict;
 size_t i;

 for (i = 0; i < ARRAY_SIZE(paths); i++) {
  conflict = paths[i];


  entry.path = conflict[0];
  entry.mode = GIT_FILEMODE_BLOB;
  GIT_INDEX_ENTRY_STAGE_SET(&entry, GIT_INDEX_STAGE_ANCESTOR);
  git_oid_fromstr(&entry.id, "1f85ca51b8e0aac893a621b61a9c2661d6aa6d81");
  cl_git_pass(git_index_add(repo_index, &entry));


  entry.path = conflict[1];
  entry.mode = GIT_FILEMODE_BLOB;
  GIT_INDEX_ENTRY_STAGE_SET(&entry, GIT_INDEX_STAGE_OURS);
  git_oid_fromstr(&entry.id, "1f85ca51b8e0aac893a621b61a9c2661d6aa6d81");
  cl_git_pass(git_index_add(repo_index, &entry));


  entry.path = conflict[2];
  entry.mode = GIT_FILEMODE_BLOB;
  GIT_INDEX_ENTRY_STAGE_SET(&entry, GIT_INDEX_STAGE_THEIRS);
  git_oid_fromstr(&entry.id, "1f85ca51b8e0aac893a621b61a9c2661d6aa6d81");
  cl_git_pass(git_index_add(repo_index, &entry));
 }
}
