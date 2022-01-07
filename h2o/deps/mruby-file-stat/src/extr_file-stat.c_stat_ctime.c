
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mrb_value ;
typedef int mrb_state ;
struct TYPE_2__ {int st_ctime; } ;


 TYPE_1__* get_stat (int *,int ) ;
 int time_at_with_sec (int *,int ) ;

__attribute__((used)) static mrb_value
stat_ctime(mrb_state *mrb, mrb_value self)
{
  return time_at_with_sec(mrb, get_stat(mrb, self)->st_ctime);
}
