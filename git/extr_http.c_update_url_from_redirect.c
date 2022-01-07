
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; int buf; } ;


 int BUG (char*,char const*,int ) ;
 int _ (char*) ;
 int die (int ,char const*,int ) ;
 int skip_prefix (char const*,int ,char const**) ;
 int strbuf_add (struct strbuf*,int ,size_t) ;
 int strbuf_reset (struct strbuf*) ;
 int strcmp (char const*,int ) ;
 int strip_suffix_mem (int ,size_t*,char const*) ;

__attribute__((used)) static int update_url_from_redirect(struct strbuf *base,
        const char *asked,
        const struct strbuf *got)
{
 const char *tail;
 size_t new_len;

 if (!strcmp(asked, got->buf))
  return 0;

 if (!skip_prefix(asked, base->buf, &tail))
  BUG("update_url_from_redirect: %s is not a superset of %s",
      asked, base->buf);

 new_len = got->len;
 if (!strip_suffix_mem(got->buf, &new_len, tail))
  die(_("unable to update url base from redirection:\n"
        "  asked for: %s\n"
        "   redirect: %s"),
      asked, got->buf);

 strbuf_reset(base);
 strbuf_add(base, got->buf, new_len);

 return 1;
}
