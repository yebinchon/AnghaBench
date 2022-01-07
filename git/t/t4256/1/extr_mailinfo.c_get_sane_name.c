
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;


 int strbuf_addbuf (struct strbuf*,struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 scalar_t__ strchr (int ,char) ;

__attribute__((used)) static void get_sane_name(struct strbuf *out, struct strbuf *name, struct strbuf *email)
{
 struct strbuf *src = name;
 if (name->len < 3 || 60 < name->len || strchr(name->buf, '@') ||
  strchr(name->buf, '<') || strchr(name->buf, '>'))
  src = email;
 else if (name == out)
  return;
 strbuf_reset(out);
 strbuf_addbuf(out, src);
}
