
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; } ;


 int strbuf_addbuf (struct strbuf*,struct strbuf const*) ;
 int strbuf_init (struct strbuf*,int ) ;
 int strbuf_reset (struct strbuf*) ;
 struct strbuf* xmalloc (int) ;

__attribute__((used)) static void handle_header(struct strbuf **out, const struct strbuf *line)
{
 if (!*out) {
  *out = xmalloc(sizeof(struct strbuf));
  strbuf_init(*out, line->len);
 } else
  strbuf_reset(*out);

 strbuf_addbuf(*out, line);
}
