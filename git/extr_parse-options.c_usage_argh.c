
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int flags; char* argh; scalar_t__ long_name; } ;
typedef int FILE ;


 int PARSE_OPT_LITERAL_ARGHELP ;
 int PARSE_OPT_OPTARG ;
 int _ (char*) ;
 int strpbrk (char*,char*) ;
 int utf8_fprintf (int *,char const*,int ) ;

__attribute__((used)) static int usage_argh(const struct option *opts, FILE *outfile)
{
 const char *s;
 int literal = (opts->flags & PARSE_OPT_LITERAL_ARGHELP) ||
  !opts->argh || !!strpbrk(opts->argh, "()<>[]|");
 if (opts->flags & PARSE_OPT_OPTARG)
  if (opts->long_name)
   s = literal ? "[=%s]" : "[=<%s>]";
  else
   s = literal ? "[%s]" : "[<%s>]";
 else
  s = literal ? " %s" : " <%s>";
 return utf8_fprintf(outfile, s, opts->argh ? _(opts->argh) : _("..."));
}
