
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oidmap ;


 int GIT_ERROR_CHECK_ALLOC (int *) ;
 int * kh_init (int ) ;
 int oid ;

int git_oidmap_new(git_oidmap **out)
{
 *out = kh_init(oid);
 GIT_ERROR_CHECK_ALLOC(*out);

 return 0;
}
