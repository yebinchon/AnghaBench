
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* name; int oid; } ;
typedef TYPE_1__ git_remote_head ;
typedef int git_buf ;
struct TYPE_6__ {char* name; int * oid; } ;
typedef TYPE_2__ expected_ref ;


 int GIT_BUF_INIT ;
 int cl_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_printf (int *,char*,char*,char*) ;
 int git_buf_puts (int *,char*) ;
 scalar_t__ git_oid_cmp (int *,int *) ;
 char* git_oid_tostr_s (int *) ;
 scalar_t__ strcmp (char*,char*) ;

void verify_remote_refs(const git_remote_head *actual_refs[], size_t actual_refs_len, const expected_ref expected_refs[], size_t expected_refs_len)
{
 size_t i, j = 0;
 git_buf msg = GIT_BUF_INIT;
 const git_remote_head *actual;
 char *oid_str;
 bool master_present = 0;


 for (i = 0; i < actual_refs_len; i++) {
  actual = actual_refs[i];
  if (!strcmp(actual->name, "refs/heads/master")) {
   master_present = 1;
   break;
  }
 }

 if (expected_refs_len + (master_present ? 1 : 0) != actual_refs_len)
  goto failed;

 for (i = 0; i < actual_refs_len; i++) {
  actual = actual_refs[i];
  if (master_present && !strcmp(actual->name, "refs/heads/master"))
   continue;

  if (strcmp(expected_refs[j].name, actual->name) ||
   git_oid_cmp(expected_refs[j].oid, &actual->oid))
   goto failed;

  j++;
 }

 return;

failed:
 git_buf_puts(&msg, "Expected and actual refs differ:\nEXPECTED:\n");

 for(i = 0; i < expected_refs_len; i++) {
  oid_str = git_oid_tostr_s(expected_refs[i].oid);
  cl_git_pass(git_buf_printf(&msg, "%s = %s\n", expected_refs[i].name, oid_str));
 }

 git_buf_puts(&msg, "\nACTUAL:\n");
 for (i = 0; i < actual_refs_len; i++) {
  actual = actual_refs[i];
  if (master_present && !strcmp(actual->name, "refs/heads/master"))
   continue;

  oid_str = git_oid_tostr_s(&actual->oid);
  cl_git_pass(git_buf_printf(&msg, "%s = %s\n", actual->name, oid_str));
 }

 cl_fail(git_buf_cstr(&msg));

 git_buf_dispose(&msg);
}
