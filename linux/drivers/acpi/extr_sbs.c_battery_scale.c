
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int battery_scale(int log)
{
 int scale = 1;
 while (log--)
  scale *= 10;
 return scale;
}
