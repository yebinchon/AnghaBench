
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xive_q {int idx; int toggle; int msk; scalar_t__ qpage; } ;


 int be32_to_cpup (scalar_t__) ;

__attribute__((used)) static u32 xive_read_eq(struct xive_q *q, bool just_peek)
{
 u32 cur;

 if (!q->qpage)
  return 0;
 cur = be32_to_cpup(q->qpage + q->idx);


 if ((cur >> 31) == q->toggle)
  return 0;


 if (!just_peek) {

  q->idx = (q->idx + 1) & q->msk;


  if (q->idx == 0)
   q->toggle ^= 1;
 }

 return cur & 0x7fffffff;
}
