
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int p_rename (char const*,char const*) ;

int cl_rename(const char *source, const char *dest)
{
 return p_rename(source, dest);
}
