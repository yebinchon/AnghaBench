
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int match_int_internal (int*,char const*,int,int *) ;

int is_integer(int *out, const char *str, int allow_negative)
{
 return match_int_internal(out, str, allow_negative, ((void*)0));
}
