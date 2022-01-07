
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ignore_status_idx; int ignore_status; } ;


 TYPE_1__ conf ;
 int str_inarray (char const*,int ,scalar_t__) ;

__attribute__((used)) static int
ignore_status_code (const char *status)
{
  if (conf.ignore_status_idx == 0)
    return 0;

  if (str_inarray (status, conf.ignore_status, conf.ignore_status_idx) != -1)
    return 1;
  return 0;
}
