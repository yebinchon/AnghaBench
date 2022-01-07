
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int module; } ;
typedef TYPE_1__ GColors ;


 int LOG_DEBUG (char*) ;
 int free (char*) ;
 int get_module_enum (char*) ;
 char* strrchr (char*,char) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static int
parse_module_color (GColors * color, const char *value)
{
  char *line = xstrdup (value), *p;

  p = strrchr (line, ' ');
  if (!p || !*(p + 1)) {
    LOG_DEBUG (("attempted to parse color module: %s\n", value));
    goto clean;
  }

  if ((color->module = get_module_enum (p + 1)) == -1)
    LOG_DEBUG (("attempted to parse color module: %s\n", value));

clean:
  free (line);

  return 0;
}
