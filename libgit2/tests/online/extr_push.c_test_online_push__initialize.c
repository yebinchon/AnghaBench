
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ length; scalar_t__ contents; } ;
typedef TYPE_1__ git_vector ;
struct TYPE_14__ {char** member_0; scalar_t__ member_1; } ;
typedef TYPE_2__ git_strarray ;
typedef int git_remote_head ;
typedef int git_remote_callbacks ;
struct TYPE_15__ {int callbacks; } ;
typedef TYPE_3__ git_push_options ;
struct TYPE_16__ {int callbacks; } ;
typedef TYPE_4__ git_fetch_options ;


 int GIT_DIRECTION_PUSH ;
 TYPE_4__ GIT_FETCH_OPTIONS_INIT ;
 TYPE_3__ GIT_PUSH_OPTIONS_INIT ;
 TYPE_1__ GIT_VECTOR_INIT ;
 int _oid_b1 ;
 int _oid_b2 ;
 int _oid_b3 ;
 int _oid_b4 ;
 int _oid_b5 ;
 int _oid_b6 ;
 int _record_cbs ;
 int _record_cbs_data ;
 int * _remote ;
 void* _remote_default ;
 void* _remote_pass ;
 void* _remote_ssh_key ;
 void* _remote_ssh_passphrase ;
 void* _remote_ssh_pubkey ;
 void* _remote_url ;
 void* _remote_user ;
 int _repo ;
 int _tag_blob ;
 int _tag_commit ;
 int _tag_lightweight ;
 int _tag_tag ;
 int _tag_tree ;
 int cl_fixture_sandbox (char*) ;
 void* cl_getenv (char*) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int cl_rename (char*,char*) ;
 int cl_skip () ;
 int create_deletion_refspecs (TYPE_1__*,int const**,size_t) ;
 int git_oid_fromstr (int *,char*) ;
 int git_remote_connect (int *,int ,int *,int *,int *) ;
 int git_remote_create (int **,int ,char*,void*) ;
 int git_remote_disconnect (int *) ;
 int git_remote_fetch (int *,int *,TYPE_4__*,int *) ;
 int git_remote_ls (int const***,size_t*,int *) ;
 int git_remote_upload (int *,TYPE_2__*,TYPE_3__*) ;
 int git_repository_set_ident (int ,char*,char*) ;
 int git_repository_workdir (int ) ;
 int git_vector_free_deep (TYPE_1__*) ;
 int memcpy (int *,int *,int) ;
 int record_callbacks_data_clear (int *) ;
 int rewrite_gitmodules (int ) ;

void test_online_push__initialize(void)
{
 git_vector delete_specs = GIT_VECTOR_INIT;
 const git_remote_head **heads;
 size_t heads_len;
 git_push_options push_opts = GIT_PUSH_OPTIONS_INIT;
 git_fetch_options fetch_opts = GIT_FETCH_OPTIONS_INIT;

 _repo = cl_git_sandbox_init("push_src");

 cl_git_pass(git_repository_set_ident(_repo, "Random J. Hacker", "foo@example.com"));
 cl_fixture_sandbox("testrepo.git");
 cl_rename("push_src/submodule/.gitted", "push_src/submodule/.git");

 rewrite_gitmodules(git_repository_workdir(_repo));
 git_oid_fromstr(&_oid_b6, "951bbbb90e2259a4c8950db78946784fb53fcbce");
 git_oid_fromstr(&_oid_b5, "fa38b91f199934685819bea316186d8b008c52a2");
 git_oid_fromstr(&_oid_b4, "27b7ce66243eb1403862d05f958c002312df173d");
 git_oid_fromstr(&_oid_b3, "d9b63a88223d8367516f50bd131a5f7349b7f3e4");
 git_oid_fromstr(&_oid_b2, "a78705c3b2725f931d3ee05348d83cc26700f247");
 git_oid_fromstr(&_oid_b1, "a78705c3b2725f931d3ee05348d83cc26700f247");

 git_oid_fromstr(&_tag_commit, "805c54522e614f29f70d2413a0470247d8b424ac");
 git_oid_fromstr(&_tag_tree, "ff83aa4c5e5d28e3bcba2f5c6e2adc61286a4e5e");
 git_oid_fromstr(&_tag_blob, "b483ae7ba66decee9aee971f501221dea84b1498");
 git_oid_fromstr(&_tag_lightweight, "951bbbb90e2259a4c8950db78946784fb53fcbce");
 git_oid_fromstr(&_tag_tag, "eea4f2705eeec2db3813f2430829afce99cd00b5");



 _remote_url = cl_getenv("GITTEST_REMOTE_URL");
 _remote_user = cl_getenv("GITTEST_REMOTE_USER");
 _remote_pass = cl_getenv("GITTEST_REMOTE_PASS");
 _remote_ssh_key = cl_getenv("GITTEST_REMOTE_SSH_KEY");
 _remote_ssh_pubkey = cl_getenv("GITTEST_REMOTE_SSH_PUBKEY");
 _remote_ssh_passphrase = cl_getenv("GITTEST_REMOTE_SSH_PASSPHRASE");
 _remote_default = cl_getenv("GITTEST_REMOTE_DEFAULT");
 _remote = ((void*)0);


 if (!_remote_url)
  cl_skip();

 cl_git_pass(git_remote_create(&_remote, _repo, "test", _remote_url));

 record_callbacks_data_clear(&_record_cbs_data);

 cl_git_pass(git_remote_connect(_remote, GIT_DIRECTION_PUSH, &_record_cbs, ((void*)0), ((void*)0)));







 cl_git_pass(git_remote_ls(&heads, &heads_len, _remote));
 cl_git_pass(create_deletion_refspecs(&delete_specs, heads, heads_len));
 if (delete_specs.length) {
  git_strarray arr = {
   (char **) delete_specs.contents,
   delete_specs.length,
  };

  memcpy(&push_opts.callbacks, &_record_cbs, sizeof(git_remote_callbacks));
  cl_git_pass(git_remote_upload(_remote, &arr, &push_opts));
 }

 git_remote_disconnect(_remote);
 git_vector_free_deep(&delete_specs);


 memcpy(&fetch_opts.callbacks, &_record_cbs, sizeof(git_remote_callbacks));
 cl_git_pass(git_remote_fetch(_remote, ((void*)0), &fetch_opts, ((void*)0)));
}
