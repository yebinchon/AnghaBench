
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
float
get_percentage (unsigned long long total, unsigned long long hit)
{
  return (total == 0 ? 0 : (((float) hit) / total) * 100);
}
