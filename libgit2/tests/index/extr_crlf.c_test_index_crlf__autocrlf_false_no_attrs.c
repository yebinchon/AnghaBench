
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_3__ {int id; } ;
typedef TYPE_1__ git_index_entry ;


 int FILE_CONTENTS_CRLF ;
 int FILE_CONTENTS_LF ;
 int FILE_OID_CRLF ;
 int FILE_OID_LF ;
 scalar_t__ GIT_EOL_CRLF ;
 scalar_t__ GIT_EOL_NATIVE ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_git_mkfile (char*,int ) ;
 int cl_git_pass (int ) ;
 int cl_repo_set_bool (int ,char*,int) ;
 int g_index ;
 int g_repo ;
 int git_index_add_bypath (int ,char*) ;
 TYPE_1__* git_index_get_bypath (int ,char*,int ) ;
 int git_oid_fromstr (int *,int ) ;

void test_index_crlf__autocrlf_false_no_attrs(void)
{
 const git_index_entry *entry;
 git_oid oid;

 cl_repo_set_bool(g_repo, "core.autocrlf", 0);

 cl_git_mkfile("./crlf/newfile.txt",
  (GIT_EOL_NATIVE == GIT_EOL_CRLF) ? FILE_CONTENTS_CRLF : FILE_CONTENTS_LF);

 cl_git_pass(git_index_add_bypath(g_index, "newfile.txt"));
 entry = git_index_get_bypath(g_index, "newfile.txt", 0);

 cl_git_pass(git_oid_fromstr(&oid,
  (GIT_EOL_NATIVE == GIT_EOL_CRLF) ? FILE_OID_CRLF : FILE_OID_LF));
 cl_assert_equal_oid(&oid, &entry->id);
}
