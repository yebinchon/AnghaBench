
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_OK ;
 scalar_t__ access (char*,int ) ;
 char* realpath (char const*,char*) ;

char *p_realpath(const char *pathname, char *resolved)
{
 char *ret;
 if ((ret = realpath(pathname, resolved)) == ((void*)0))
  return ((void*)0);







 return ret;
}
