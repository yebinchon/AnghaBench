
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_idxmap_icase ;


 int GIT_ERROR_CHECK_ALLOC (int *) ;
 int idxicase ;
 int * kh_init (int ) ;

int git_idxmap_icase_new(git_idxmap_icase **out)
{
 *out = kh_init(idxicase);
 GIT_ERROR_CHECK_ALLOC(*out);

 return 0;
}
