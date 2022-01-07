
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int strlen (char const*) ;
 char* url_decode_internal (char const**,int ,int *,struct strbuf*,int ) ;

char *url_percent_decode(const char *encoded)
{
 struct strbuf out = STRBUF_INIT;
 return url_decode_internal(&encoded, strlen(encoded), ((void*)0), &out, 0);
}
