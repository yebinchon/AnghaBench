
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_urlschemechar (int,int ) ;

int is_url(const char *url)
{

 if (!url || !is_urlschemechar(1, *url++))
  return 0;
 while (*url && *url != ':') {
  if (!is_urlschemechar(0, *url++))
   return 0;
 }

 return (url[0] == ':' && url[1] == '/' && url[2] == '/');
}
