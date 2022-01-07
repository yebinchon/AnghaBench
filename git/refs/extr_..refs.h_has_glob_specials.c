
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* strpbrk (char const*,char*) ;

__attribute__((used)) static inline const char *has_glob_specials(const char *pattern)
{
 return strpbrk(pattern, "?*[");
}
