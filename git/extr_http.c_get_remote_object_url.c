
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int append_remote_object_url (struct strbuf*,char const*,char const*,int) ;
 char* strbuf_detach (struct strbuf*,int *) ;

char *get_remote_object_url(const char *url, const char *hex,
       int only_two_digit_prefix)
{
 struct strbuf buf = STRBUF_INIT;
 append_remote_object_url(&buf, url, hex, only_two_digit_prefix);
 return strbuf_detach(&buf, ((void*)0));
}
