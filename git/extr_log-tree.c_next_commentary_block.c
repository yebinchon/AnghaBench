
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct TYPE_2__ {int file; } ;
struct rev_info {int shown_dashes; TYPE_1__ diffopt; } ;


 int fputs (char const*,int ) ;
 int strbuf_addstr (struct strbuf*,char const*) ;

__attribute__((used)) static void next_commentary_block(struct rev_info *opt, struct strbuf *sb)
{
 const char *x = opt->shown_dashes ? "\n" : "---\n";
 if (sb)
  strbuf_addstr(sb, x);
 else
  fputs(x, opt->diffopt.file);
 opt->shown_dashes = 1;
}
