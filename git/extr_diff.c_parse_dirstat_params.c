
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct strbuf {int dummy; } ;
struct TYPE_4__ {int dirstat_by_line; int dirstat_by_file; int dirstat_cumulative; } ;
struct diff_options {int dirstat_permille; TYPE_2__ flags; } ;
struct TYPE_3__ {char* string; } ;


 struct string_list STRING_LIST_INIT_NODUP ;
 int _ (char*) ;
 int free (char*) ;
 scalar_t__ isdigit (char const) ;
 int strbuf_addf (struct strbuf*,int ,char const*) ;
 int strcmp (char const*,char*) ;
 int string_list_clear (struct string_list*,int ) ;
 int string_list_split_in_place (struct string_list*,char*,char,int) ;
 int strtoul (char const*,char**,int) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static int parse_dirstat_params(struct diff_options *options, const char *params_string,
    struct strbuf *errmsg)
{
 char *params_copy = xstrdup(params_string);
 struct string_list params = STRING_LIST_INIT_NODUP;
 int ret = 0;
 int i;

 if (*params_copy)
  string_list_split_in_place(&params, params_copy, ',', -1);
 for (i = 0; i < params.nr; i++) {
  const char *p = params.items[i].string;
  if (!strcmp(p, "changes")) {
   options->flags.dirstat_by_line = 0;
   options->flags.dirstat_by_file = 0;
  } else if (!strcmp(p, "lines")) {
   options->flags.dirstat_by_line = 1;
   options->flags.dirstat_by_file = 0;
  } else if (!strcmp(p, "files")) {
   options->flags.dirstat_by_line = 0;
   options->flags.dirstat_by_file = 1;
  } else if (!strcmp(p, "noncumulative")) {
   options->flags.dirstat_cumulative = 0;
  } else if (!strcmp(p, "cumulative")) {
   options->flags.dirstat_cumulative = 1;
  } else if (isdigit(*p)) {
   char *end;
   int permille = strtoul(p, &end, 10) * 10;
   if (*end == '.' && isdigit(*++end)) {

    permille += *end - '0';

    while (isdigit(*++end))
     ;
   }
   if (!*end)
    options->dirstat_permille = permille;
   else {
    strbuf_addf(errmsg, _("  Failed to parse dirstat cut-off percentage '%s'\n"),
         p);
    ret++;
   }
  } else {
   strbuf_addf(errmsg, _("  Unknown dirstat parameter '%s'\n"), p);
   ret++;
  }

 }
 string_list_clear(&params, 0);
 free(params_copy);
 return ret;
}
