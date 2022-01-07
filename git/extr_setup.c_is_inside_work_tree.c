
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_git_work_tree () ;
 scalar_t__ inside_work_tree ;
 scalar_t__ is_inside_dir (int ) ;

int is_inside_work_tree(void)
{
 if (inside_work_tree < 0)
  inside_work_tree = is_inside_dir(get_git_work_tree());
 return inside_work_tree;
}
