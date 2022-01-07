
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct ref_filter {char const* prefix; void* cb_data; int fn; int pattern; } ;
typedef int each_ref_fn ;


 struct strbuf STRBUF_INIT ;
 int filter_refs ;
 int for_each_ref (int ,struct ref_filter*) ;
 int has_glob_specials (char const*) ;
 int starts_with (char const*,char*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_complete (struct strbuf*,char) ;
 int strbuf_release (struct strbuf*) ;

int for_each_glob_ref_in(each_ref_fn fn, const char *pattern,
 const char *prefix, void *cb_data)
{
 struct strbuf real_pattern = STRBUF_INIT;
 struct ref_filter filter;
 int ret;

 if (!prefix && !starts_with(pattern, "refs/"))
  strbuf_addstr(&real_pattern, "refs/");
 else if (prefix)
  strbuf_addstr(&real_pattern, prefix);
 strbuf_addstr(&real_pattern, pattern);

 if (!has_glob_specials(pattern)) {

  strbuf_complete(&real_pattern, '/');

  strbuf_addch(&real_pattern, '*');
 }

 filter.pattern = real_pattern.buf;
 filter.prefix = prefix;
 filter.fn = fn;
 filter.cb_data = cb_data;
 ret = for_each_ref(filter_refs, &filter);

 strbuf_release(&real_pattern);
 return ret;
}
