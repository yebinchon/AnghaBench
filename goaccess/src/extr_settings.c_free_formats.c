
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int time_format; int spec_date_time_num_format; int spec_date_time_format; int date_num_format; int date_format; int log_format; } ;


 TYPE_1__ conf ;
 int free (int ) ;

void
free_formats (void)
{
  free (conf.log_format);
  free (conf.date_format);
  free (conf.date_num_format);
  free (conf.spec_date_time_format);
  free (conf.spec_date_time_num_format);
  free (conf.time_format);
}
