
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_vector ;
typedef int git_remote_head ;
typedef int git_remote ;
typedef int git_refspec ;
typedef int git_reference ;
typedef int git_config ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 scalar_t__ GIT_REFERENCE_SYMBOLIC ;
 int assert (int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_config_free (int *) ;
 int git_reference_free (int *) ;
 char* git_reference_name (int *) ;
 int git_reference_resolve (int **,int *) ;
 char* git_reference_symbolic_target (int *) ;
 scalar_t__ git_reference_type (int *) ;
 int ref_to_update (int*,int *,int *,int *,char const*) ;
 int remote_head_for_fetchspec_src (int **,int *,int ) ;

__attribute__((used)) static int remote_head_for_ref(git_remote_head **out, git_remote *remote, git_refspec *spec, git_vector *update_heads, git_reference *ref)
{
 git_reference *resolved_ref = ((void*)0);
 git_buf remote_name = GIT_BUF_INIT;
 git_config *config = ((void*)0);
 const char *ref_name;
 int error = 0, update;

 assert(out && spec && ref);

 *out = ((void*)0);

 error = git_reference_resolve(&resolved_ref, ref);


 if (error == GIT_ENOTFOUND && git_reference_type(ref) == GIT_REFERENCE_SYMBOLIC) {
  ref_name = git_reference_symbolic_target(ref);
  error = 0;
 } else {
  ref_name = git_reference_name(resolved_ref);
 }

 if ((error = ref_to_update(&update, &remote_name, remote, spec, ref_name)) < 0)
  goto cleanup;

 if (update)
  error = remote_head_for_fetchspec_src(out, update_heads, git_buf_cstr(&remote_name));

cleanup:
 git_buf_dispose(&remote_name);
 git_reference_free(resolved_ref);
 git_config_free(config);
 return error;
}
