
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
typedef scalar_t__ (* char_predicate ) (char) ;


 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,unsigned char) ;
 int strbuf_grow (struct strbuf*,size_t) ;

__attribute__((used)) static void strbuf_add_urlencode(struct strbuf *sb, const char *s, size_t len,
     char_predicate allow_unencoded_fn)
{
 strbuf_grow(sb, len);
 while (len--) {
  char ch = *s++;
  if (allow_unencoded_fn(ch))
   strbuf_addch(sb, ch);
  else
   strbuf_addf(sb, "%%%02x", (unsigned char)ch);
 }
}
