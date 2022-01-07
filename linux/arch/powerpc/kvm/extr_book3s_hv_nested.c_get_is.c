
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int get_is(unsigned long r_val)
{
 return (r_val >> 10) & 0x3;
}
