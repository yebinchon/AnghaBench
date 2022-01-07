
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_uid; int st_mode; int st_gid; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 struct stat* get_stat (int *,int ) ;
 scalar_t__ getuid () ;
 int mrb_false_value () ;
 scalar_t__ mrb_group_member (int *,int ) ;
 int mrb_true_value () ;

__attribute__((used)) static mrb_value
stat_readable_real_p(mrb_state *mrb, mrb_value self)
{
  struct stat *st;





  st = get_stat(mrb, self);
  return mrb_true_value();
}
