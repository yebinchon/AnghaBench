
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int buf; } ;
struct TYPE_2__ {int file; int use_color; } ;
struct rev_info {TYPE_1__ diffopt; int show_decorations; scalar_t__ sources; } ;
struct commit {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int format_decorations (struct strbuf*,struct commit*,int ) ;
 int fprintf (int ,char*,char*) ;
 int fputs (int ,int ) ;
 char** revision_sources_peek (scalar_t__,struct commit*) ;
 int strbuf_release (struct strbuf*) ;

void show_decorations(struct rev_info *opt, struct commit *commit)
{
 struct strbuf sb = STRBUF_INIT;

 if (opt->sources) {
  char **slot = revision_sources_peek(opt->sources, commit);

  if (slot && *slot)
   fprintf(opt->diffopt.file, "\t%s", *slot);
 }
 if (!opt->show_decorations)
  return;
 format_decorations(&sb, commit, opt->diffopt.use_color);
 fputs(sb.buf, opt->diffopt.file);
 strbuf_release(&sb);
}
