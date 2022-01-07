
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int TICKS_PER_SEC ;

__attribute__((used)) static inline u64 mb_per_tick(int mbps)
{
 return (1 << 20) / TICKS_PER_SEC * ((u64) mbps);
}
