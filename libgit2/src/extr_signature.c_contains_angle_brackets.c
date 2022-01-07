
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strchr (char const*,char) ;

__attribute__((used)) static bool contains_angle_brackets(const char *input)
{
 return strchr(input, '<') != ((void*)0) || strchr(input, '>') != ((void*)0);
}
