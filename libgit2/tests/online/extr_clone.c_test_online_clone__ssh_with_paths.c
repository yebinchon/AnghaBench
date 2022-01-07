
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {char** member_0; int member_1; char** strings; } ;
typedef TYPE_3__ git_strarray ;
struct TYPE_6__ {int * certificate_check; TYPE_3__* payload; int credentials; int transport; } ;
struct TYPE_7__ {TYPE_1__ callbacks; } ;
struct TYPE_9__ {TYPE_2__ fetch_opts; int remote_cb; } ;


 int _remote_url ;
 int _remote_user ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int clar__skip () ;
 int cred_cb ;
 int custom_remote_ssh_with_paths ;
 TYPE_4__ g_options ;
 int g_repo ;
 int git_clone (int *,int ,char*,TYPE_4__*) ;
 int git_transport_ssh_with_paths ;
 scalar_t__ strncmp (int ,char*,int) ;

void test_online_clone__ssh_with_paths(void)
{
 char *bad_paths[] = {
  "/bin/yes",
  "/bin/false",
 };
 char *good_paths[] = {
  "/usr/bin/git-upload-pack",
  "/usr/bin/git-receive-pack",
 };
 git_strarray arr = {
  bad_paths,
  2,
 };


 clar__skip();

 if (!_remote_url || !_remote_user || strncmp(_remote_url, "ssh://", 5) != 0)
  clar__skip();

 g_options.remote_cb = custom_remote_ssh_with_paths;
 g_options.fetch_opts.callbacks.transport = git_transport_ssh_with_paths;
 g_options.fetch_opts.callbacks.credentials = cred_cb;
 g_options.fetch_opts.callbacks.payload = &arr;
 g_options.fetch_opts.callbacks.certificate_check = ((void*)0);

 cl_git_fail(git_clone(&g_repo, _remote_url, "./foo", &g_options));

 arr.strings = good_paths;
 cl_git_pass(git_clone(&g_repo, _remote_url, "./foo", &g_options));
}
