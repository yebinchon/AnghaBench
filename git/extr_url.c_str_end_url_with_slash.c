
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int end_url_with_slash (struct strbuf*,char const*) ;
 int free (char*) ;
 char* strbuf_detach (struct strbuf*,int *) ;

void str_end_url_with_slash(const char *url, char **dest)
{
 struct strbuf buf = STRBUF_INIT;
 end_url_with_slash(&buf, url);
 free(*dest);
 *dest = strbuf_detach(&buf, ((void*)0));
}
