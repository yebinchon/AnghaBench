
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;


 int strlen (char const*) ;
 int strncpy (char*,char*,int) ;
 char* strstr (char*,char*) ;
 char* strtoupper (int ) ;
 char* ws_get_method (char*) ;
 char* xmalloc (int) ;
 int xstrdup (char const*) ;

__attribute__((used)) static char *
ws_parse_request (char *line, char **method, char **protocol)
{
  const char *meth;
  char *req = ((void*)0), *request = ((void*)0), *proto = ((void*)0);
  ptrdiff_t rlen;

  if ((meth = ws_get_method (line)) == ((void*)0)) {
    return ((void*)0);
  } else {
    req = line + strlen (meth);
    if ((proto = strstr (line, " HTTP/1.0")) == ((void*)0) &&
        (proto = strstr (line, " HTTP/1.1")) == ((void*)0))
      return ((void*)0);

    req++;
    if ((rlen = proto - req) <= 0)
      return ((void*)0);

    request = xmalloc (rlen + 1);
    strncpy (request, req, rlen);
    request[rlen] = 0;

    (*method) = strtoupper (xstrdup (meth));
    (*protocol) = strtoupper (xstrdup (++proto));
  }

  return request;
}
