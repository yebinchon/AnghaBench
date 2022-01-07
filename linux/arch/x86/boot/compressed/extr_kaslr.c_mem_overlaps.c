
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_vector {scalar_t__ start; scalar_t__ size; } ;



__attribute__((used)) static bool mem_overlaps(struct mem_vector *one, struct mem_vector *two)
{

 if (one->start + one->size <= two->start)
  return 0;

 if (one->start >= two->start + two->size)
  return 0;
 return 1;
}
