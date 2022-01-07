
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int within_khz(unsigned long a, unsigned long b)
{
 long diff = a - b;

 return (diff >= -1000 && diff <= 1000);
}
