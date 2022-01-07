
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* parsed_string (char*,char**,int) ;
 char* strpbrk (char*,char const*) ;

__attribute__((used)) static char *
parse_string (char **str, const char *delims, int cnt)
{
  int idx = 0;
  char *pch = *str, *p = ((void*)0);
  char end;

  if ((*delims != 0x0) && (p = strpbrk (*str, delims)) == ((void*)0))
    return ((void*)0);

  end = !*delims ? 0x0 : *p;
  do {

    if (*pch == end)
      idx++;

    if ((*pch == end && cnt == idx) || *pch == '\0')
      return parsed_string (pch, str, 1);

    if (*pch == '\\')
      pch++;
  } while (*pch++);

  return ((void*)0);
}
