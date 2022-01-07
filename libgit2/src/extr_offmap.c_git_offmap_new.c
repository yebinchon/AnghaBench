
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_offmap ;


 int GIT_ERROR_CHECK_ALLOC (int *) ;
 int * kh_init (int ) ;
 int off ;

int git_offmap_new(git_offmap **out)
{
 *out = kh_init(off);
 GIT_ERROR_CHECK_ALLOC(*out);

 return 0;
}
