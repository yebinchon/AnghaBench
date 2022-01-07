
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int utf8_strnwidth (char const*,int,int ) ;

int utf8_strwidth(const char *string)
{
 return utf8_strnwidth(string, -1, 0);
}
