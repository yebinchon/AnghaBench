
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long SCALE_DOWN_FACTOR ;
 unsigned long SCALE_UP_FACTOR ;
 unsigned long max (unsigned long,unsigned long) ;

__attribute__((used)) static inline unsigned long scale_amount(unsigned long qd, bool up)
{
 return max(up ? qd >> SCALE_UP_FACTOR : qd >> SCALE_DOWN_FACTOR, 1UL);
}
