
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ignore_crawlers; } ;
typedef size_t GModule ;
 size_t VISITORS ;

 char* VISITORS_HEAD_BOTS ;

 char const* _ (char const*) ;
 TYPE_1__ conf ;

const char *
module_to_head (GModule module)
{
  static const char *modules[] = {
    129,
    133,
    132,
    138,
    140,
    137,
    142,
    128,
    130,
    136,
    135,
    139,
    131,
    134,



  };

  if (!conf.ignore_crawlers)
    modules[VISITORS] = VISITORS_HEAD_BOTS;

  return _(modules[module]);
}
