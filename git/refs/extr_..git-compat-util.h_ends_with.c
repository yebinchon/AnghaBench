
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strip_suffix (char const*,char const*,size_t*) ;

__attribute__((used)) static inline int ends_with(const char *str, const char *suffix)
{
 size_t len;
 return strip_suffix(str, suffix, &len);
}
