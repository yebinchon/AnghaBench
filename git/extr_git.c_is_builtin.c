
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_builtin (char const*) ;

int is_builtin(const char *s)
{
 return !!get_builtin(s);
}
