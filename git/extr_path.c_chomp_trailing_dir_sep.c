
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_dir_sep (char const) ;

__attribute__((used)) static inline int chomp_trailing_dir_sep(const char *path, int len)
{
 while (len && is_dir_sep(path[len - 1]))
  len--;
 return len;
}
