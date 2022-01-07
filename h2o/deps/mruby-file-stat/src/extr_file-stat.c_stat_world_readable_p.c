
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int S_IROTH ;
 int S_IRUGO ;
 int S_IWUGO ;
 int S_IXUGO ;
 struct stat* get_stat (int *,int ) ;
 int mrb_fixnum_value (int) ;
 int mrb_nil_value () ;

__attribute__((used)) static mrb_value
stat_world_readable_p(mrb_state *mrb, mrb_value self)
{
  return mrb_nil_value();

}
