
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct strbuf {int len; char* buf; } ;
struct TYPE_4__ {scalar_t__ len; } ;
struct mailinfo {TYPE_1__ email; int name; } ;


 int cleanup_space (struct strbuf*) ;
 int get_sane_name (int *,struct strbuf*,TYPE_1__*) ;
 scalar_t__ isspace (char) ;
 int parse_bogus_from (struct mailinfo*,struct strbuf const*) ;
 int strbuf_add (TYPE_1__*,char*,size_t) ;
 int strbuf_addbuf (struct strbuf*,struct strbuf const*) ;
 int strbuf_init (struct strbuf*,int) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_remove (struct strbuf*,int,int) ;
 int strbuf_reset (TYPE_1__*) ;
 int strbuf_setlen (struct strbuf*,int) ;
 int strbuf_trim (struct strbuf*) ;
 char* strchr (char*,char) ;
 size_t strcspn (char*,char*) ;
 int unquote_quoted_pair (struct strbuf*) ;

__attribute__((used)) static void handle_from(struct mailinfo *mi, const struct strbuf *from)
{
 char *at;
 size_t el;
 struct strbuf f;

 strbuf_init(&f, from->len);
 strbuf_addbuf(&f, from);

 unquote_quoted_pair(&f);

 at = strchr(f.buf, '@');
 if (!at) {
  parse_bogus_from(mi, from);
  goto out;
 }




 if (mi->email.len && strchr(at + 1, '@'))
  goto out;




 while (at > f.buf) {
  char c = at[-1];
  if (isspace(c))
   break;
  if (c == '<') {
   at[-1] = ' ';
   break;
  }
  at--;
 }
 el = strcspn(at, " \n\t\r\v\f>");
 strbuf_reset(&mi->email);
 strbuf_add(&mi->email, at, el);
 strbuf_remove(&f, at - f.buf, el + (at[el] ? 1 : 0));
 cleanup_space(&f);
 strbuf_trim(&f);
 if (f.buf[0] == '(' && f.len && f.buf[f.len - 1] == ')') {
  strbuf_remove(&f, 0, 1);
  strbuf_setlen(&f, f.len - 1);
 }

 get_sane_name(&mi->name, &f, &mi->email);
out:
 strbuf_release(&f);
}
