
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* buf; } ;
typedef TYPE_1__ WSHeaders ;


 int free (char*) ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char const*) ;
 char* strstr (char const*,char*) ;
 int ws_set_header_fields (char*,TYPE_1__*) ;
 char* xmalloc (int) ;

__attribute__((used)) static int
parse_headers (WSHeaders * headers)
{
  char *tmp = ((void*)0);
  const char *buffer = headers->buf;
  const char *line = buffer, *next = ((void*)0);
  int len = 0;

  while (line) {
    if ((next = strstr (line, "\r\n")) != ((void*)0))
      len = (next - line);
    else
      len = strlen (line);

    if (len <= 0)
      return 1;

    tmp = xmalloc (len + 1);
    memcpy (tmp, line, len);
    tmp[len] = '\0';

    if (ws_set_header_fields (tmp, headers) == 1) {
      free (tmp);
      return 1;
    }

    free (tmp);
    line = next ? (next + 2) : ((void*)0);

    if (strcmp (next, "\r\n\r\n") == 0)
      break;
  }

  return 0;
}
