
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_futils_filestamp ;


 int assert (int *) ;
 int memcpy (int *,int const*,int) ;
 int memset (int *,int ,int) ;

void git_futils_filestamp_set(
 git_futils_filestamp *target, const git_futils_filestamp *source)
{
 assert(target);

 if (source)
  memcpy(target, source, sizeof(*target));
 else
  memset(target, 0, sizeof(*target));
}
