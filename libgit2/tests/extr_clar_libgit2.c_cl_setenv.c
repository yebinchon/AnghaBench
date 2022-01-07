
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int setenv (char const*,char const*,int) ;
 int unsetenv (char const*) ;

int cl_setenv(const char *name, const char *value)
{
 return (value == ((void*)0)) ? unsetenv(name) : setenv(name, value, 1);
}
