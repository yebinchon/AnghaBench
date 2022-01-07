
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int scale_linear(int it, int width, int max_change)
{
 if (!it)
  return 0;






 return 1 + (it * (width - 1) / max_change);
}
