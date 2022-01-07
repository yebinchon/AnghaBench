
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ptr; long size; } ;
typedef TYPE_1__ mmfile_t ;


 int ws_blank_line (char*,int,unsigned int) ;

__attribute__((used)) static int count_trailing_blank(mmfile_t *mf, unsigned ws_rule)
{
 char *ptr = mf->ptr;
 long size = mf->size;
 int cnt = 0;

 if (!size)
  return cnt;
 ptr += size - 1;
 if (*ptr != '\n')
  ;
 else
  ptr--;
 while (mf->ptr < ptr) {
  char *prev_eol;
  for (prev_eol = ptr; mf->ptr <= prev_eol; prev_eol--)
   if (*prev_eol == '\n')
    break;
  if (!ws_blank_line(prev_eol + 1, ptr - prev_eol, ws_rule))
   break;
  cnt++;
  ptr = prev_eol - 1;
 }
 return cnt;
}
