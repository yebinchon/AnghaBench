
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hour_spec_min; } ;


 TYPE_1__ conf ;

__attribute__((used)) static void
parse_time_specificity_string (char *hmark, char *ftime)
{

  if (conf.hour_spec_min && hmark[1] != '\0') {
    hmark[2] = '\0';
    return;
  }


  if ((hmark - ftime) > 0)
    *hmark = '\0';
}
