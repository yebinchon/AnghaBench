
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int output_format_idx; char const** output_formats; } ;


 TYPE_1__ conf ;
 scalar_t__ strcmp (char const*,char const*) ;
 char* strrchr (char const*,char) ;
 char* xstrdup (char const*) ;

int
find_output_type (char **filename, const char *ext, int alloc)
{
  int i;
  const char *dot = ((void*)0);

  for (i = 0; i < conf.output_format_idx; ++i) {

    if (strcmp (conf.output_formats[i], ext) == 0)
      return 0;

    if ((dot = strrchr (conf.output_formats[i], '.')) != ((void*)0) &&
        strcmp (dot + 1, ext) == 0) {
      if (alloc)
        *filename = xstrdup (conf.output_formats[i]);
      return 0;
    }
  }

  return 1;
}
