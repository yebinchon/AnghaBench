
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 char* url_decode_mem (char const*,int ) ;

char *url_decode(const char *url)
{
 return url_decode_mem(url, strlen(url));
}
