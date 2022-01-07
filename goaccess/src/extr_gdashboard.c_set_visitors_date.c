
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int spec_date_time_format; int spec_date_time_num_format; } ;


 TYPE_1__ conf ;
 char* get_visitors_date (char const*,int ,int ) ;

__attribute__((used)) static char *
set_visitors_date (const char *value)
{
  return get_visitors_date (value, conf.spec_date_time_num_format,
                            conf.spec_date_time_format);
}
