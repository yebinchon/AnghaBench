
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int E_TYPE_ERROR ;
 scalar_t__ mrb_data_get_ptr (int *,int ,int *) ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_stat_type ;

__attribute__((used)) static struct stat *
get_stat(mrb_state *mrb, mrb_value self)
{
  struct stat *st;

  st = (struct stat *)mrb_data_get_ptr(mrb, self, &mrb_stat_type);
  if (!st) mrb_raise(mrb, E_TYPE_ERROR, "uninitialized File::Stat");
  return st;
}
