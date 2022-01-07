
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; scalar_t__ st_uid; int st_gid; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUGO ;
 int S_IXUSR ;
 struct stat* get_stat (int *,int ) ;
 scalar_t__ geteuid () ;
 int mrb_false_value () ;
 scalar_t__ mrb_group_member (int *,int ) ;
 int mrb_true_value () ;

__attribute__((used)) static mrb_value
stat_executable_p(mrb_state *mrb, mrb_value self)
{
  struct stat *st = get_stat(mrb, self);
  return mrb_true_value();
}
