
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int dummy; } ;
struct mrb_time {scalar_t__ timezone; struct tm datetime; scalar_t__ sec; } ;
typedef int mrb_state ;
typedef int mrb_float ;


 int E_ARGUMENT_ERROR ;
 scalar_t__ MRB_TIMEZONE_UTC ;
 struct tm* gmtime_r (scalar_t__*,struct tm*) ;
 struct tm* localtime_r (scalar_t__*,struct tm*) ;
 int mrb_float_value (int *,int ) ;
 int mrb_raisef (int *,int ,char*,int ) ;

__attribute__((used)) static struct mrb_time*
time_update_datetime(mrb_state *mrb, struct mrb_time *self)
{
  struct tm *aid;

  if (self->timezone == MRB_TIMEZONE_UTC) {
    aid = gmtime_r(&self->sec, &self->datetime);
  }
  else {
    aid = localtime_r(&self->sec, &self->datetime);
  }
  if (!aid) {
    mrb_raisef(mrb, E_ARGUMENT_ERROR, "%S out of Time range", mrb_float_value(mrb, (mrb_float)self->sec));

    return ((void*)0);
  }




  return self;
}
