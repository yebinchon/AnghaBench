
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* path; char* method; char* protocol; } ;
typedef TYPE_1__ WSHeaders ;


 scalar_t__ isspace (unsigned char) ;
 char* strchr (char*,char) ;
 int * strpbrk (char*,char*) ;
 scalar_t__ strstr (char*,char*) ;
 char* ws_parse_request (char*,char**,char**) ;
 int ws_set_header_key_value (TYPE_1__*,char*,char*) ;

__attribute__((used)) static int
ws_set_header_fields (char *line, WSHeaders * headers)
{
  char *path = ((void*)0), *method = ((void*)0), *proto = ((void*)0), *p, *value;

  if (line[0] == '\n' || line[0] == '\r')
    return 1;

  if ((strstr (line, "GET ")) || (strstr (line, "get "))) {
    if ((path = ws_parse_request (line, &method, &proto)) == ((void*)0))
      return 1;
    headers->path = path;
    headers->method = method;
    headers->protocol = proto;

    return 0;
  }

  if ((p = strchr (line, ':')) == ((void*)0))
    return 1;

  value = p + 1;
  while (p != line && isspace ((unsigned char) *(p - 1)))
    p--;

  if (p == line)
    return 1;

  *p = '\0';
  if (strpbrk (line, " \t") != ((void*)0)) {
    *p = ' ';
    return 1;
  }
  while (isspace ((unsigned char) *value))
    value++;

  ws_set_header_key_value (headers, line, value);

  return 0;
}
