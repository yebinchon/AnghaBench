
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_git_dir () ;
 scalar_t__ inside_git_dir ;
 scalar_t__ is_inside_dir (int ) ;

int is_inside_git_dir(void)
{
 if (inside_git_dir < 0)
  inside_git_dir = is_inside_dir(get_git_dir());
 return inside_git_dir;
}
