
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_dir_sep (char const) ;
 int strlen (char const*) ;
 int strncmp (char const*,char const*,int) ;

__attribute__((used)) static int dir_prefix(const char *buf, const char *dir)
{
 int len = strlen(dir);
 return !strncmp(buf, dir, len) &&
  (is_dir_sep(buf[len]) || buf[len] == '\0');
}
