
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_idxmap ;


 int GIT_ERROR_CHECK_ALLOC (int *) ;
 int idx ;
 int * kh_init (int ) ;

int git_idxmap_new(git_idxmap **out)
{
 *out = kh_init(idx);
 GIT_ERROR_CHECK_ALLOC(*out);

 return 0;
}
