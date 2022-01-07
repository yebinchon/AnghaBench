
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char const* buf; } ;
struct diff_options {char* pickaxe; int pickaxe_opts; } ;
typedef int regex_t ;
typedef int * kwset_t ;


 int DIFF_PICKAXE_IGNORE_CASE ;
 int DIFF_PICKAXE_KIND_G ;
 int DIFF_PICKAXE_KIND_S ;
 int DIFF_PICKAXE_REGEX ;
 int REG_EXTENDED ;
 int REG_ICASE ;
 int REG_NEWLINE ;
 struct strbuf STRBUF_INIT ;
 int basic_regex_quote_buf (struct strbuf*,char const*) ;
 int diff_grep ;
 int diff_queued_diff ;
 int has_changes ;
 scalar_t__ has_non_ascii (char const*) ;
 int * kwsalloc (int *) ;
 int kwsfree (int *) ;
 int kwsincr (int *,char const*,int ) ;
 int kwsprep (int *) ;
 int pickaxe (int *,struct diff_options*,int *,int *,int ) ;
 int regcomp_or_die (int *,char const*,int) ;
 int regfree (int *) ;
 int strbuf_release (struct strbuf*) ;
 int strlen (char const*) ;
 int * tolower_trans_tbl ;

void diffcore_pickaxe(struct diff_options *o)
{
 const char *needle = o->pickaxe;
 int opts = o->pickaxe_opts;
 regex_t regex, *regexp = ((void*)0);
 kwset_t kws = ((void*)0);

 if (opts & (DIFF_PICKAXE_REGEX | DIFF_PICKAXE_KIND_G)) {
  int cflags = REG_EXTENDED | REG_NEWLINE;
  if (o->pickaxe_opts & DIFF_PICKAXE_IGNORE_CASE)
   cflags |= REG_ICASE;
  regcomp_or_die(&regex, needle, cflags);
  regexp = &regex;
 } else if (opts & DIFF_PICKAXE_KIND_S) {
  if (o->pickaxe_opts & DIFF_PICKAXE_IGNORE_CASE &&
      has_non_ascii(needle)) {
   struct strbuf sb = STRBUF_INIT;
   int cflags = REG_NEWLINE | REG_ICASE;

   basic_regex_quote_buf(&sb, needle);
   regcomp_or_die(&regex, sb.buf, cflags);
   strbuf_release(&sb);
   regexp = &regex;
  } else {
   kws = kwsalloc(o->pickaxe_opts & DIFF_PICKAXE_IGNORE_CASE
           ? tolower_trans_tbl : ((void*)0));
   kwsincr(kws, needle, strlen(needle));
   kwsprep(kws);
  }
 }

 pickaxe(&diff_queued_diff, o, regexp, kws,
  (opts & DIFF_PICKAXE_KIND_G) ? diff_grep : has_changes);

 if (regexp)
  regfree(regexp);
 if (kws)
  kwsfree(kws);
 return;
}
