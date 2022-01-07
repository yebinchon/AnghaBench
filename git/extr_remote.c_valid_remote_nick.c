
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_dir_sep (int ) ;
 scalar_t__ is_dot_or_dotdot (char const*) ;

__attribute__((used)) static int valid_remote_nick(const char *name)
{
 if (!name[0] || is_dot_or_dotdot(name))
  return 0;


 while (*name)
  if (is_dir_sep(*name++))
   return 0;
 return 1;
}
