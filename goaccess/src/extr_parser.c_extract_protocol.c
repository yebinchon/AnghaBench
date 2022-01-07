
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncmp (char const*,char const*,int) ;

__attribute__((used)) static const char *
extract_protocol (const char *token)
{
  const char *lookfor;

  if ((lookfor = "HTTP/1.0", !strncmp (token, lookfor, 8)) ||
      (lookfor = "HTTP/1.1", !strncmp (token, lookfor, 8)) ||
      (lookfor = "HTTP/2", !strncmp (token, lookfor, 6)))
    return lookfor;
  return ((void*)0);
}
