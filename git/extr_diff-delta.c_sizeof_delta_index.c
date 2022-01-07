
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delta_index {unsigned long memsize; } ;



unsigned long sizeof_delta_index(struct delta_index *index)
{
 if (index)
  return index->memsize;
 else
  return 0;
}
