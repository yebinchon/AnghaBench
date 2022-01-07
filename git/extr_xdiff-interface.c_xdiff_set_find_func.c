
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct ff_regs* find_func_priv; int find_func; } ;
typedef TYPE_1__ xdemitconf_t ;
struct ff_regs {int nr; struct ff_reg* array; } ;
struct ff_reg {int negate; int re; } ;


 int ALLOC_ARRAY (struct ff_reg*,int) ;
 int die (char*,char const*) ;
 int ff_regexp ;
 int free (char*) ;
 scalar_t__ regcomp (int *,char const*,int) ;
 char* strchr (char const*,char) ;
 struct ff_regs* xmalloc (int) ;
 char* xstrndup (char const*,int) ;

void xdiff_set_find_func(xdemitconf_t *xecfg, const char *value, int cflags)
{
 int i;
 struct ff_regs *regs;

 xecfg->find_func = ff_regexp;
 regs = xecfg->find_func_priv = xmalloc(sizeof(struct ff_regs));
 for (i = 0, regs->nr = 1; value[i]; i++)
  if (value[i] == '\n')
   regs->nr++;
 ALLOC_ARRAY(regs->array, regs->nr);
 for (i = 0; i < regs->nr; i++) {
  struct ff_reg *reg = regs->array + i;
  const char *ep = strchr(value, '\n'), *expression;
  char *buffer = ((void*)0);

  reg->negate = (*value == '!');
  if (reg->negate && i == regs->nr - 1)
   die("Last expression must not be negated: %s", value);
  if (*value == '!')
   value++;
  if (ep)
   expression = buffer = xstrndup(value, ep - value);
  else
   expression = value;
  if (regcomp(&reg->re, expression, cflags))
   die("Invalid regexp to look for hunk header: %s", expression);
  free(buffer);
  value = ep + 1;
 }
}
