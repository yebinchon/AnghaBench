
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ptrdiff_t ;
struct TYPE_2__ {scalar_t__ append_protocol; scalar_t__ append_method; } ;


 char* alloc_string (char*) ;
 TYPE_1__ conf ;
 char* decode_url (char*) ;
 char* extract_method (char*) ;
 char* extract_protocol (char*) ;
 int free (char*) ;
 int strlen (char const*) ;
 int strncpy (char*,char*,int) ;
 char* strrchr (char*,char) ;
 char* strtoupper (char*) ;
 char* xmalloc (int) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static char *
parse_req (char *line, char **method, char **protocol)
{
  char *req = ((void*)0), *request = ((void*)0), *dreq = ((void*)0), *ptr = ((void*)0);
  const char *meth, *proto;
  ptrdiff_t rlen;

  meth = extract_method (line);


  if (meth == ((void*)0)) {
    request = xstrdup (line);
  }

  else {
    req = line + strlen (meth);
    if (!(ptr = strrchr (req, ' ')) || !(proto = extract_protocol (++ptr)))
      return alloc_string ("-");

    req++;
    if ((rlen = ptr - req) <= 0)
      return alloc_string ("-");

    request = xmalloc (rlen + 1);
    strncpy (request, req, rlen);
    request[rlen] = 0;

    if (conf.append_method)
      (*method) = strtoupper (xstrdup (meth));

    if (conf.append_protocol)
      (*protocol) = strtoupper (xstrdup (proto));
  }

  if (!(dreq = decode_url (request)))
    return request;
  else if (*dreq == '\0') {
    free (dreq);
    return request;
  }

  free (request);
  return dreq;
}
