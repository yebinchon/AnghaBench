
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_UNUSED (void*) ;
 int git_hashsig_compare (void*,void*) ;

int git_diff_find_similar__calc_similarity(
 int *score, void *siga, void *sigb, void *payload)
{
 int error;

 GIT_UNUSED(payload);
 error = git_hashsig_compare(siga, sigb);
 if (error < 0)
  return error;

 *score = error;
 return 0;
}
