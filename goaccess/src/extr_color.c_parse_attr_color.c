
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GColors ;


 int LOG_DEBUG (char*) ;
 int free (char*) ;
 int locate_attr_color (int *,char*) ;
 char* strchr (char*,char) ;
 char* strpbrk (char*,char*) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static int
parse_attr_color (GColors * color, const char *value)
{
  char *line, *ptr, *start;
  int ret = 0;

  line = xstrdup (value);

  start = strchr (line, ' ');
  if ((!start) || (!*(start + 1))) {
    LOG_DEBUG (("attempted to parse color attr: %s\n", value));
    goto clean;
  }

  start++;
  while (1) {
    if ((ptr = strpbrk (start, ", ")) != ((void*)0))
      *ptr = 0;
    locate_attr_color (color, start);
    if (ptr == ((void*)0))
      break;
    start = ptr + 1;
  }

clean:
  free (line);

  return ret;
}
