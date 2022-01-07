
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int word_type ;
struct TYPE_3__ {unsigned int high; unsigned int low; } ;
struct TYPE_4__ {long long ll; TYPE_1__ s; } ;
typedef TYPE_2__ DWunion ;



long long __lshrdi3(long long u, word_type b)
{
 DWunion uu, w;
 word_type bm;

 if (b == 0)
  return u;

 uu.ll = u;
 bm = 32 - b;

 if (bm <= 0) {
  w.s.high = 0;
  w.s.low = (unsigned int) uu.s.high >> -bm;
 } else {
  const unsigned int carries = (unsigned int) uu.s.high << bm;

  w.s.high = (unsigned int) uu.s.high >> b;
  w.s.low = ((unsigned int) uu.s.low >> b) | carries;
 }

 return w.ll;
}
