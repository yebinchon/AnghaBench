
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_4__ {int id; } ;
typedef TYPE_1__ git_index_entry ;


 char* FILE_CONTENTS_CRLF ;
 char* FILE_CONTENTS_LF ;
 int FILE_OID_LF ;
 int cl_assert (TYPE_1__ const*) ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_git_fail (int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_repo_set_bool (int ,char*,int) ;
 int cl_repo_set_string (int ,char*,char*) ;
 int g_index ;
 int g_repo ;
 int git_index_add_bypath (int ,char*) ;
 TYPE_1__* git_index_get_bypath (int ,char*,int ) ;
 int git_oid_fromstr (int *,int ) ;

void test_index_crlf__safecrlf_true_autocrlf_input_text_auto_attr(void)
{
 const git_index_entry *entry;
 git_oid oid;

 cl_git_mkfile("./crlf/.gitattributes", "* text=auto\n");

 cl_repo_set_string(g_repo, "core.autocrlf", "input");
 cl_repo_set_bool(g_repo, "core.safecrlf", 1);

 cl_git_mkfile("./crlf/newfile.txt", FILE_CONTENTS_LF);

 cl_git_pass(git_index_add_bypath(g_index, "newfile.txt"));
 entry = git_index_get_bypath(g_index, "newfile.txt", 0);
 cl_assert(entry);

 cl_git_pass(git_oid_fromstr(&oid, FILE_OID_LF));
 cl_assert_equal_oid(&oid, &entry->id);

 cl_git_mkfile("./crlf/newfile2.txt", FILE_CONTENTS_CRLF);
 cl_git_fail(git_index_add_bypath(g_index, "newfile2.txt"));
}
