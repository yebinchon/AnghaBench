
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned msb(unsigned long val)
{
 unsigned r = 0;
 while (val >>= 1)
  r++;
 return r;
}
