
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchrnul (char const*,char) ;

__attribute__((used)) static const char *next_line(const char *str)
{
 const char *nl = strchrnul(str, '\n');
 return nl + !!*nl;
}
