
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int get_ap(unsigned long r_val)
{
 return (r_val >> 5) & 0x7;
}
