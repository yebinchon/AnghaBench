
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ color_scheme; } ;


 int ARRAY_SIZE (int ) ;
 int COLORS ;
 scalar_t__ MONOKAI ;
 scalar_t__ STD_GREEN ;
 int colors256_green ;
 int colors256_mono ;
 int colors256_monokai ;
 int colors8_green ;
 int colors8_mono ;
 TYPE_1__ conf ;
 int nocolors ;
 int parse_colors (int ,int ) ;

__attribute__((used)) static void
add_default_colors (void)
{

  if (COLORS < 8)
    parse_colors (nocolors, ARRAY_SIZE (nocolors));


  if (COLORS == 256 && (!conf.color_scheme || conf.color_scheme == MONOKAI))
    parse_colors (colors256_monokai, ARRAY_SIZE (colors256_monokai));

  else if (COLORS > 16) {
    if (conf.color_scheme == STD_GREEN)
      parse_colors (colors256_green, ARRAY_SIZE (colors256_green));
    else
      parse_colors (colors256_mono, ARRAY_SIZE (colors256_mono));
  }


  if (COLORS >= 8 && COLORS <= 16) {
    if (conf.color_scheme == STD_GREEN)
      parse_colors (colors8_green, ARRAY_SIZE (colors8_green));
    else
      parse_colors (colors8_mono, ARRAY_SIZE (colors8_mono));
  }
}
