
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;



__attribute__((used)) static inline u64 cyc_to_ns(u64 cyc, u32 mult, u32 shift)
{
 return (cyc * mult) >> shift;
}
