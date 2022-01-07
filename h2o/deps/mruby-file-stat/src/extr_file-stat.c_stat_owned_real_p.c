
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mrb_value ;
typedef int mrb_state ;
struct TYPE_2__ {scalar_t__ st_uid; } ;


 TYPE_1__* get_stat (int *,int ) ;
 scalar_t__ getuid () ;
 int mrb_false_value () ;
 int mrb_true_value () ;

__attribute__((used)) static mrb_value
stat_owned_real_p(mrb_state *mrb, mrb_value self)
{
  return get_stat(mrb, self)->st_uid == getuid() ? mrb_true_value() : mrb_false_value();
}
