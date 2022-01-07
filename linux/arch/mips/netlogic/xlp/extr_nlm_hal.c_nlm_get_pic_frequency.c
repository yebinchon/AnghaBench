
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cpu_is_xlpii () ;
 unsigned int nlm_xlp2_get_pic_frequency (int) ;

unsigned int nlm_get_pic_frequency(int node)
{
 if (cpu_is_xlpii())
  return nlm_xlp2_get_pic_frequency(node);
 else
  return 133333333;
}
