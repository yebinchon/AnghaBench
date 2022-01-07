
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int parse_color (char*) ;
 int * strchr (char*,char) ;
 char* strdup (char const*) ;

__attribute__((used)) static void
parse_colors (const char *colors[], size_t n)
{
  char *line;
  size_t i;

  for (i = 0; i < n; ++i) {
    line = strdup (colors[i]);

    if (strchr (line, ':') == ((void*)0)) {
      free (line);
      continue;
    }
    parse_color (line);
  }
}
