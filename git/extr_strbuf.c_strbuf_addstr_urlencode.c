
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
typedef int char_predicate ;


 int strbuf_add_urlencode (struct strbuf*,char const*,int ,int ) ;
 int strlen (char const*) ;

void strbuf_addstr_urlencode(struct strbuf *sb, const char *s,
        char_predicate allow_unencoded_fn)
{
 strbuf_add_urlencode(sb, s, strlen(s), allow_unencoded_fn);
}
