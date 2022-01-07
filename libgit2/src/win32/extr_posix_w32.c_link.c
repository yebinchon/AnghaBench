
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSYS ;
 int GIT_UNUSED (char const*) ;
 int errno ;

int p_link(const char *old, const char *new)
{
 GIT_UNUSED(old);
 GIT_UNUSED(new);
 errno = ENOSYS;
 return -1;
}
