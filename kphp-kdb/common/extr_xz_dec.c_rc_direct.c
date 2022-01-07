
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct rc_dec {int range; int code; } ;


 int rc_normalize (struct rc_dec*) ;

__attribute__((used)) static inline void rc_direct(struct rc_dec *rc, uint32_t *dest, uint32_t limit)
{
 uint32_t mask;

 do {
  rc_normalize(rc);
  rc->range >>= 1;
  rc->code -= rc->range;
  mask = (uint32_t)0 - (rc->code >> 31);
  rc->code += rc->range & mask;
  *dest = (*dest << 1) + (mask + 1);
 } while (--limit > 0);
}
