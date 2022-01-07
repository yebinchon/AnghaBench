
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mrb_value ;
typedef int mrb_state ;
struct TYPE_2__ {int st_gid; } ;


 TYPE_1__* get_stat (int *,int ) ;
 int mrb_false_value () ;
 scalar_t__ mrb_group_member (int *,int ) ;
 int mrb_true_value () ;

__attribute__((used)) static mrb_value
stat_grpowned_p(mrb_state *mrb, mrb_value self)
{

  if (mrb_group_member(mrb, get_stat(mrb, self)->st_gid)) return mrb_true_value();

  return mrb_false_value();
}
