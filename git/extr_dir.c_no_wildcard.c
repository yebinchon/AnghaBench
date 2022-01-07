
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t simple_length (char const*) ;

int no_wildcard(const char *string)
{
 return string[simple_length(string)] == '\0';
}
