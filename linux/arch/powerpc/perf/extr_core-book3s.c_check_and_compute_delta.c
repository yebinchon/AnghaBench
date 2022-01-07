
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static u64 check_and_compute_delta(u64 prev, u64 val)
{
 u64 delta = (val - prev) & 0xfffffffful;
 if (prev > val && (prev - val) < 256)
  delta = 0;

 return delta;
}
