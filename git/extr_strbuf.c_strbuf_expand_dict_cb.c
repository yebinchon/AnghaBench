
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf_expand_dict_entry {scalar_t__ value; scalar_t__ placeholder; } ;
struct strbuf {int dummy; } ;


 int strbuf_addstr (struct strbuf*,scalar_t__) ;
 size_t strlen (scalar_t__) ;
 int strncmp (char const*,scalar_t__,size_t) ;

size_t strbuf_expand_dict_cb(struct strbuf *sb, const char *placeholder,
  void *context)
{
 struct strbuf_expand_dict_entry *e = context;
 size_t len;

 for (; e->placeholder && (len = strlen(e->placeholder)); e++) {
  if (!strncmp(placeholder, e->placeholder, len)) {
   if (e->value)
    strbuf_addstr(sb, e->value);
   return len;
  }
 }
 return 0;
}
