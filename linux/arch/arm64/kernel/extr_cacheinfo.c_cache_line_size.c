
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cache_line_size_of_cpu () ;
 scalar_t__ coherency_max_size ;

int cache_line_size(void)
{
 if (coherency_max_size != 0)
  return coherency_max_size;

 return cache_line_size_of_cpu();
}
