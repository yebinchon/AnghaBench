
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;
typedef int mrb_float ;


 int E_ARGUMENT_ERROR ;
 int mrb_fixnum_value (scalar_t__) ;
 int mrb_get_args (int *,char*,int*) ;
 int mrb_raise (int *,int ,char*) ;
 int sleep (int) ;
 scalar_t__ time (int ) ;
 int usleep (int) ;

__attribute__((used)) static mrb_value
mrb_f_sleep(mrb_state *mrb, mrb_value self)
{
    time_t beg = time(0);
    time_t end;

    mrb_float sec;

    mrb_get_args(mrb, "f", &sec);
    if (sec >= 0) {
        usleep(sec * 1000000);
    }
    else {
        mrb_raise(mrb, E_ARGUMENT_ERROR, "time interval must not be negative");
    }
    end = time(0) - beg;

    return mrb_fixnum_value(end);
}
