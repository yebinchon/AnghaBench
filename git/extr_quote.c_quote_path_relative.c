
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;


 struct strbuf STRBUF_INIT ;
 int quote_c_style_counted (char const*,int ,struct strbuf*,int *,int ) ;
 char* relative_path (char const*,char const*,struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int strlen (char const*) ;

char *quote_path_relative(const char *in, const char *prefix,
     struct strbuf *out)
{
 struct strbuf sb = STRBUF_INIT;
 const char *rel = relative_path(in, prefix, &sb);
 strbuf_reset(out);
 quote_c_style_counted(rel, strlen(rel), out, ((void*)0), 0);
 strbuf_release(&sb);

 return out->buf;
}
