
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t GModule ;
 char const* _ (char const*) ;

const char *
module_to_label (GModule module)
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

  return _(modules[module]);
}
