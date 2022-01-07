
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_git_work_tree () ;
 scalar_t__ is_bare_repository_cfg ;

int is_bare_repository(void)
{

 return is_bare_repository_cfg && !get_git_work_tree();
}
