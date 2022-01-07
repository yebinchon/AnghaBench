
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int hashsig_in_progress ;
typedef int git_hashsig_option_t ;
typedef int git_hashsig ;


 int GIT_ERROR_CHECK_ALLOC (int *) ;
 int git_hashsig_free (int *) ;
 int hashsig_add_hashes (int *,int const*,size_t,int *) ;
 int * hashsig_alloc (int ) ;
 int hashsig_finalize_hashes (int *) ;
 int hashsig_in_progress_init (int *,int *) ;

int git_hashsig_create(
 git_hashsig **out,
 const char *buf,
 size_t buflen,
 git_hashsig_option_t opts)
{
 int error;
 hashsig_in_progress prog;
 git_hashsig *sig = hashsig_alloc(opts);
 GIT_ERROR_CHECK_ALLOC(sig);

 hashsig_in_progress_init(&prog, sig);

 error = hashsig_add_hashes(sig, (const uint8_t *)buf, buflen, &prog);

 if (!error)
  error = hashsig_finalize_hashes(sig);

 if (!error)
  *out = sig;
 else
  git_hashsig_free(sig);

 return error;
}
