
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_mkstemps_mode (char*,int ,int) ;

int git_mkstemp_mode(char *pattern, int mode)
{

 return git_mkstemps_mode(pattern, 0, mode);
}
