
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int TOPA_SHIFT ;

__attribute__((used)) static inline unsigned int sizes(unsigned int tsz)
{
 return 1 << (tsz + TOPA_SHIFT);
}
