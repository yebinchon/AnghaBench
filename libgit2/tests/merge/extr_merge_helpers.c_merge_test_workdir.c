
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct merge_index_entry {int oid_str; int path; } ;
struct TYPE_4__ {int workdir; } ;
typedef TYPE_1__ git_repository ;
typedef int git_oid ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int dircount ;
 int git_blob_create_from_workdir (int *,TYPE_1__*,int ) ;
 int git_buf_dispose (int *) ;
 int git_buf_puts (int *,int ) ;
 scalar_t__ git_oid_cmp (int *,int *) ;
 int git_oid_fromstr (int *,int ) ;
 int git_path_direach (int *,int ,int ,size_t*) ;

int merge_test_workdir(git_repository *repo, const struct merge_index_entry expected[], size_t expected_len)
{
 size_t actual_len = 0, i;
 git_oid actual_oid, expected_oid;
 git_buf wd = GIT_BUF_INIT;

 git_buf_puts(&wd, repo->workdir);
 git_path_direach(&wd, 0, dircount, &actual_len);

 if (actual_len != expected_len)
  return 0;

 for (i = 0; i < expected_len; i++) {
  git_blob_create_from_workdir(&actual_oid, repo, expected[i].path);
  git_oid_fromstr(&expected_oid, expected[i].oid_str);

  if (git_oid_cmp(&actual_oid, &expected_oid) != 0)
   return 0;
 }

 git_buf_dispose(&wd);

 return 1;
}
