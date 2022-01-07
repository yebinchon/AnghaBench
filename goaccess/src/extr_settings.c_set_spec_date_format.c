
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ spec_date_time_num_format; scalar_t__ spec_date_time_format; scalar_t__ date_num_format; } ;


 TYPE_1__ conf ;
 int free (scalar_t__) ;
 scalar_t__ set_date_num_format () ;
 int set_spec_date_time_format () ;
 int set_spec_date_time_num_format () ;
 scalar_t__ verify_formats () ;

void
set_spec_date_format (void)
{
  if (verify_formats ())
    return;

  if (conf.date_num_format)
    free (conf.date_num_format);
  if (conf.spec_date_time_format)
    free (conf.spec_date_time_format);
  if (conf.spec_date_time_num_format)
    free (conf.spec_date_time_num_format);

  if (set_date_num_format () == 0) {
    set_spec_date_time_num_format ();
    set_spec_date_time_format ();
  }
}
