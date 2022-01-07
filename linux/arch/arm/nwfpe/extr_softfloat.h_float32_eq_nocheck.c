
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float32 ;
typedef int flag ;
typedef scalar_t__ bits32 ;



__attribute__((used)) static inline flag float32_eq_nocheck(float32 a, float32 b)
{
 return (a == b) || ((bits32) ((a | b) << 1) == 0);
}
