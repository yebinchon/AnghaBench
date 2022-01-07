
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_strmap ;


 int GIT_ERROR_CHECK_ALLOC (int *) ;
 int * kh_init (int ) ;
 int str ;

int git_strmap_new(git_strmap **out)
{
 *out = kh_init(str);
 GIT_ERROR_CHECK_ALLOC(*out);

 return 0;
}
