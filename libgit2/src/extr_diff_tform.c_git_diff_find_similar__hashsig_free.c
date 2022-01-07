
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_UNUSED (void*) ;
 int git_hashsig_free (void*) ;

void git_diff_find_similar__hashsig_free(void *sig, void *payload)
{
 GIT_UNUSED(payload);
 git_hashsig_free(sig);
}
