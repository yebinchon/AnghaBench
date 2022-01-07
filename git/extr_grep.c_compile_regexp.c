
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; int len; } ;
struct grep_pat {char* pattern; size_t patternlen; int is_fixed; int regexp; scalar_t__ ignore_case; scalar_t__ fixed; int word_regexp; } ;
struct grep_opt {int pcre2; scalar_t__ extended_regexp_option; scalar_t__ pcre1; scalar_t__ fixed; scalar_t__ ignore_case; int word_regexp; } ;


 int REG_EXTENDED ;
 int REG_ICASE ;
 int REG_NEWLINE ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int compile_fixed_regexp (struct grep_pat*,struct grep_opt*) ;
 int compile_pcre1_regexp (struct grep_pat*,struct grep_opt*) ;
 int compile_pcre2_pattern (struct grep_pat*,struct grep_opt*) ;
 int compile_regexp_failed (struct grep_pat*,char*) ;
 int die (int ) ;
 int is_fixed (char*,size_t) ;
 scalar_t__ memchr (char*,int ,size_t) ;
 int regcomp (int *,char*,int) ;
 int regerror (int,int *,char*,int) ;
 scalar_t__ starts_with (char*,char const*) ;
 int strbuf_add (struct strbuf*,char*,int) ;
 int strbuf_release (struct strbuf*) ;
 int strlen (char const*) ;

__attribute__((used)) static void compile_regexp(struct grep_pat *p, struct grep_opt *opt)
{
 int err;
 int regflags = REG_NEWLINE;

 p->word_regexp = opt->word_regexp;
 p->ignore_case = opt->ignore_case;
 p->fixed = opt->fixed;

 if (memchr(p->pattern, 0, p->patternlen) && !opt->pcre2)
  die(_("given pattern contains NULL byte (via -f <file>). This is only supported with -P under PCRE v2"));

 p->is_fixed = is_fixed(p->pattern, p->patternlen);
 if (p->fixed || p->is_fixed) {
  compile_fixed_regexp(p, opt);

  return;
 }

 if (opt->pcre2) {
  compile_pcre2_pattern(p, opt);
  return;
 }

 if (opt->pcre1) {
  compile_pcre1_regexp(p, opt);
  return;
 }

 if (p->ignore_case)
  regflags |= REG_ICASE;
 if (opt->extended_regexp_option)
  regflags |= REG_EXTENDED;
 err = regcomp(&p->regexp, p->pattern, regflags);
 if (err) {
  char errbuf[1024];
  regerror(err, &p->regexp, errbuf, 1024);
  compile_regexp_failed(p, errbuf);
 }
}
