
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grep_source {char* buf; int name; } ;
struct grep_opt {unsigned int last_shown; } ;


 scalar_t__ match_funcname (struct grep_opt*,struct grep_source*,char*,char*) ;
 int show_line (struct grep_opt*,char*,char*,int ,unsigned int,int ,char) ;

__attribute__((used)) static void show_funcname_line(struct grep_opt *opt, struct grep_source *gs,
          char *bol, unsigned lno)
{
 while (bol > gs->buf) {
  char *eol = --bol;

  while (bol > gs->buf && bol[-1] != '\n')
   bol--;
  lno--;

  if (lno <= opt->last_shown)
   break;

  if (match_funcname(opt, gs, bol, eol)) {
   show_line(opt, bol, eol, gs->name, lno, 0, '=');
   break;
  }
 }
}
