
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;



__attribute__((used)) static inline u64 get_delta(u64 t1, u64 t0)
{
 if (t1 > t0 || t0 > ~(u32)0)
  return t1 - t0;

 return (u32)t1 - (u32)t0;
}
