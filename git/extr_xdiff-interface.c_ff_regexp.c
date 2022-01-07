
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ff_regs {int nr; struct ff_reg* array; } ;
struct ff_reg {scalar_t__ negate; int re; } ;
struct TYPE_3__ {scalar_t__ rm_so; int rm_eo; } ;
typedef TYPE_1__ regmatch_t ;


 scalar_t__ isspace (char const) ;
 int memcpy (char*,char const*,int) ;
 int regexec_buf (int *,char const*,long,int,TYPE_1__*,int ) ;

__attribute__((used)) static long ff_regexp(const char *line, long len,
  char *buffer, long buffer_size, void *priv)
{
 struct ff_regs *regs = priv;
 regmatch_t pmatch[2];
 int i;
 int result;


 if (len > 0 && line[len-1] == '\n') {
  if (len > 1 && line[len-2] == '\r')
   len -= 2;
  else
   len--;
 }

 for (i = 0; i < regs->nr; i++) {
  struct ff_reg *reg = regs->array + i;
  if (!regexec_buf(&reg->re, line, len, 2, pmatch, 0)) {
   if (reg->negate)
    return -1;
   break;
  }
 }
 if (regs->nr <= i)
  return -1;
 i = pmatch[1].rm_so >= 0 ? 1 : 0;
 line += pmatch[i].rm_so;
 result = pmatch[i].rm_eo - pmatch[i].rm_so;
 if (result > buffer_size)
  result = buffer_size;
 while (result > 0 && (isspace(line[result - 1])))
  result--;
 memcpy(buffer, line, result);
 return result;
}
