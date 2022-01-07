
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static inline u64 get_vtimer(void)
{
 u64 timer;

 asm volatile("stpt %0" : "=Q" (timer));
 return timer;
}
