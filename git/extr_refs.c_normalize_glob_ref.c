
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {int * string; int * util; } ;
struct strbuf {int dummy; } ;


 int BUG (char*) ;
 struct strbuf STRBUF_INIT ;
 scalar_t__ has_glob_specials (char const*) ;
 int starts_with (char const*,char*) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int * strbuf_detach (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_strip_suffix (struct strbuf*,char*) ;

void normalize_glob_ref(struct string_list_item *item, const char *prefix,
   const char *pattern)
{
 struct strbuf normalized_pattern = STRBUF_INIT;

 if (*pattern == '/')
  BUG("pattern must not start with '/'");

 if (prefix) {
  strbuf_addstr(&normalized_pattern, prefix);
 }
 else if (!starts_with(pattern, "refs/"))
  strbuf_addstr(&normalized_pattern, "refs/");
 strbuf_addstr(&normalized_pattern, pattern);
 strbuf_strip_suffix(&normalized_pattern, "/");

 item->string = strbuf_detach(&normalized_pattern, ((void*)0));
 item->util = has_glob_specials(pattern) ? ((void*)0) : item->string;
 strbuf_release(&normalized_pattern);
}
