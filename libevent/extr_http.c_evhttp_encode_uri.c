
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* evhttp_uriencode (char const*,int,int ) ;

char *
evhttp_encode_uri(const char *str)
{
 return evhttp_uriencode(str, -1, 0);
}
