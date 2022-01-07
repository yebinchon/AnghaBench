
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;
struct grep_pat {int regexp; int pattern; } ;
struct grep_opt {scalar_t__ debug; scalar_t__ ignore_case; } ;
typedef int errbuf ;


 int REG_ICASE ;
 struct strbuf STRBUF_INIT ;
 int basic_regex_quote_buf (struct strbuf*,int ) ;
 int compile_regexp_failed (struct grep_pat*,char*) ;
 int fprintf (int ,char*,char*) ;
 int regcomp (int *,char*,int) ;
 int regerror (int,int *,char*,int) ;
 int stderr ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void compile_fixed_regexp(struct grep_pat *p, struct grep_opt *opt)
{
 struct strbuf sb = STRBUF_INIT;
 int err;
 int regflags = 0;

 basic_regex_quote_buf(&sb, p->pattern);
 if (opt->ignore_case)
  regflags |= REG_ICASE;
 err = regcomp(&p->regexp, sb.buf, regflags);
 if (opt->debug)
  fprintf(stderr, "fixed %s\n", sb.buf);
 strbuf_release(&sb);
 if (err) {
  char errbuf[1024];
  regerror(err, &p->regexp, errbuf, sizeof(errbuf));
  compile_regexp_failed(p, errbuf);
 }
}
