
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {long nrec; } ;
struct TYPE_4__ {TYPE_2__ xdf1; } ;
typedef TYPE_1__ xdfenv_t ;
typedef int xdemitconf_t ;
struct func_line {char* buf; long len; } ;
typedef int dummy ;


 long match_func_rec (TYPE_2__*,int const*,long,char*,long) ;

__attribute__((used)) static long get_func_line(xdfenv_t *xe, xdemitconf_t const *xecfg,
     struct func_line *func_line, long start, long limit)
{
 long l, size, step = (start > limit) ? -1 : 1;
 char *buf, dummy[1];

 buf = func_line ? func_line->buf : dummy;
 size = func_line ? sizeof(func_line->buf) : sizeof(dummy);

 for (l = start; l != limit && 0 <= l && l < xe->xdf1.nrec; l += step) {
  long len = match_func_rec(&xe->xdf1, xecfg, l, buf, size);
  if (len >= 0) {
   if (func_line)
    func_line->len = len;
   return l;
  }
 }
 return -1;
}
