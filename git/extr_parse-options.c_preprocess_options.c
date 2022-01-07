
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_opt_ctx_t {char const** alias_groups; } ;
struct option {scalar_t__ type; int short_name; char* long_name; char* value; } ;


 int ALLOC_ARRAY (struct option*,int) ;
 int BUG (char*,...) ;
 int CALLOC_ARRAY (char const**,int) ;
 int COPY_ARRAY (struct option*,struct option const*,int) ;
 scalar_t__ OPTION_ALIAS ;
 scalar_t__ OPTION_END ;
 int memcpy (struct option*,struct option const*,int) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static struct option *preprocess_options(struct parse_opt_ctx_t *ctx,
      const struct option *options)
{
 struct option *newopt;
 int i, nr, alias;
 int nr_aliases = 0;

 for (nr = 0; options[nr].type != OPTION_END; nr++) {
  if (options[nr].type == OPTION_ALIAS)
   nr_aliases++;
 }

 if (!nr_aliases)
  return ((void*)0);

 ALLOC_ARRAY(newopt, nr + 1);
 COPY_ARRAY(newopt, options, nr + 1);


 CALLOC_ARRAY(ctx->alias_groups, 3 * (nr_aliases + 1));

 for (alias = 0, i = 0; i < nr; i++) {
  int short_name;
  const char *long_name;
  const char *source;
  int j;

  if (newopt[i].type != OPTION_ALIAS)
   continue;

  short_name = newopt[i].short_name;
  long_name = newopt[i].long_name;
  source = newopt[i].value;

  if (!long_name)
   BUG("An alias must have long option name");

  for (j = 0; j < nr; j++) {
   const char *name = options[j].long_name;

   if (!name || strcmp(name, source))
    continue;

   if (options[j].type == OPTION_ALIAS)
    BUG("No please. Nested aliases are not supported.");







   memcpy(newopt + i, options + j, sizeof(*newopt));
   newopt[i].short_name = short_name;
   newopt[i].long_name = long_name;
   break;
  }

  if (j == nr)
   BUG("could not find source option '%s' of alias '%s'",
       source, newopt[i].long_name);
  ctx->alias_groups[alias * 3 + 0] = newopt[i].long_name;
  ctx->alias_groups[alias * 3 + 1] = options[j].long_name;
  ctx->alias_groups[alias * 3 + 2] = ((void*)0);
  alias++;
 }

 return newopt;
}
