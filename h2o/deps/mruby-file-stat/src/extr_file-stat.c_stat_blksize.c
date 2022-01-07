
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mrb_value ;
typedef int mrb_state ;
struct TYPE_2__ {int st_blksize; } ;


 TYPE_1__* get_stat (int *,int ) ;
 int mrb_fixnum_value (int ) ;
 int mrb_nil_value () ;

__attribute__((used)) static mrb_value
stat_blksize(mrb_state *mrb, mrb_value self)
{



  return mrb_nil_value();

}
