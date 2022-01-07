
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct grep_pat {scalar_t__ token; size_t field; scalar_t__ word_regexp; } ;
struct TYPE_6__ {int rm_so; int rm_eo; } ;
typedef TYPE_1__ regmatch_t ;
typedef enum grep_context { ____Placeholder_grep_context } grep_context ;
struct TYPE_7__ {char* field; size_t len; } ;


 size_t ARRAY_SIZE (TYPE_4__*) ;
 int GREP_CONTEXT_HEAD ;


 scalar_t__ GREP_PATTERN ;
 scalar_t__ GREP_PATTERN_HEAD ;
 int REG_NOTBOL ;
 int assert (int) ;
 int die (char*) ;
 TYPE_4__* header_field ;
 int patmatch (struct grep_pat*,char*,char*,TYPE_1__*,int) ;
 int strip_timestamp (char*,char**) ;
 scalar_t__ strncmp (char*,char const*,size_t) ;
 scalar_t__ word_char (char) ;

__attribute__((used)) static int match_one_pattern(struct grep_pat *p, char *bol, char *eol,
        enum grep_context ctx,
        regmatch_t *pmatch, int eflags)
{
 int hit = 0;
 int saved_ch = 0;
 const char *start = bol;

 if ((p->token != GREP_PATTERN) &&
     ((p->token == GREP_PATTERN_HEAD) != (ctx == GREP_CONTEXT_HEAD)))
  return 0;

 if (p->token == GREP_PATTERN_HEAD) {
  const char *field;
  size_t len;
  assert(p->field < ARRAY_SIZE(header_field));
  field = header_field[p->field].field;
  len = header_field[p->field].len;
  if (strncmp(bol, field, len))
   return 0;
  bol += len;
  switch (p->field) {
  case 129:
  case 128:
   saved_ch = strip_timestamp(bol, &eol);
   break;
  default:
   break;
  }
 }

 again:
 hit = patmatch(p, bol, eol, pmatch, eflags);

 if (hit && p->word_regexp) {
  if ((pmatch[0].rm_so < 0) ||
      (eol - bol) < pmatch[0].rm_so ||
      (pmatch[0].rm_eo < 0) ||
      (eol - bol) < pmatch[0].rm_eo)
   die("regexp returned nonsense");







  if ( ((pmatch[0].rm_so == 0) ||
        !word_char(bol[pmatch[0].rm_so-1])) &&
       ((pmatch[0].rm_eo == (eol-bol)) ||
        !word_char(bol[pmatch[0].rm_eo])) )
   ;
  else
   hit = 0;


  if (pmatch->rm_so == pmatch->rm_eo)
   hit = 0;

  if (!hit && pmatch[0].rm_so + bol + 1 < eol) {






   bol = pmatch[0].rm_so + bol + 1;
   while (word_char(bol[-1]) && bol < eol)
    bol++;
   eflags |= REG_NOTBOL;
   if (bol < eol)
    goto again;
  }
 }
 if (p->token == GREP_PATTERN_HEAD && saved_ch)
  *eol = saved_ch;
 if (hit) {
  pmatch[0].rm_so += bol - start;
  pmatch[0].rm_eo += bol - start;
 }
 return hit;
}
