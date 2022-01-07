
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int quote_c_style (char const*,struct strbuf*,int *,int ) ;
 int strbuf_add (struct strbuf*,char const*,int) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_grow (struct strbuf*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void pprint_rename(struct strbuf *name, const char *a, const char *b)
{
 const char *old_name = a;
 const char *new_name = b;
 int pfx_length, sfx_length;
 int pfx_adjust_for_slash;
 int len_a = strlen(a);
 int len_b = strlen(b);
 int a_midlen, b_midlen;
 int qlen_a = quote_c_style(a, ((void*)0), ((void*)0), 0);
 int qlen_b = quote_c_style(b, ((void*)0), ((void*)0), 0);

 if (qlen_a || qlen_b) {
  quote_c_style(a, name, ((void*)0), 0);
  strbuf_addstr(name, " => ");
  quote_c_style(b, name, ((void*)0), 0);
  return;
 }


 pfx_length = 0;
 while (*old_name && *new_name && *old_name == *new_name) {
  if (*old_name == '/')
   pfx_length = old_name - a + 1;
  old_name++;
  new_name++;
 }


 old_name = a + len_a;
 new_name = b + len_b;
 sfx_length = 0;
 pfx_adjust_for_slash = (pfx_length ? 1 : 0);
 while (a + pfx_length - pfx_adjust_for_slash <= old_name &&
        b + pfx_length - pfx_adjust_for_slash <= new_name &&
        *old_name == *new_name) {
  if (*old_name == '/')
   sfx_length = len_a - (old_name - a);
  old_name--;
  new_name--;
 }







 a_midlen = len_a - pfx_length - sfx_length;
 b_midlen = len_b - pfx_length - sfx_length;
 if (a_midlen < 0)
  a_midlen = 0;
 if (b_midlen < 0)
  b_midlen = 0;

 strbuf_grow(name, pfx_length + a_midlen + b_midlen + sfx_length + 7);
 if (pfx_length + sfx_length) {
  strbuf_add(name, a, pfx_length);
  strbuf_addch(name, '{');
 }
 strbuf_add(name, a + pfx_length, a_midlen);
 strbuf_addstr(name, " => ");
 strbuf_add(name, b + pfx_length, b_midlen);
 if (pfx_length + sfx_length) {
  strbuf_addch(name, '}');
  strbuf_add(name, a + len_a - sfx_length, sfx_length);
 }
}
