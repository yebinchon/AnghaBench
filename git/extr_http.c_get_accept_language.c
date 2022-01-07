
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ len; } ;


 struct strbuf STRBUF_INIT ;
 char const* cached_accept_language ;
 char* strbuf_detach (struct strbuf*,int *) ;
 int write_accept_language (struct strbuf*) ;

__attribute__((used)) static const char *get_accept_language(void)
{
 if (!cached_accept_language) {
  struct strbuf buf = STRBUF_INIT;
  write_accept_language(&buf);
  if (buf.len > 0)
   cached_accept_language = strbuf_detach(&buf, ((void*)0));
 }

 return cached_accept_language;
}
