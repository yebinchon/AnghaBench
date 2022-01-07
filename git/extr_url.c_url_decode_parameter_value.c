
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 char* url_decode_internal (char const**,int,char*,struct strbuf*,int) ;

char *url_decode_parameter_value(const char **query)
{
 struct strbuf out = STRBUF_INIT;
 return url_decode_internal(query, -1, "&", &out, 1);
}
