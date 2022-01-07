
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr {size_t end; size_t start; } ;



__attribute__((used)) static int attrRangeIntersect(struct attr *a, size_t *start, size_t *end)
{

 if (*start >= a->end)
  return 0;
 if (*end < a->start)
  return 0;



 if (*start < a->start)
  *start = a->start;
 if (*end > a->end)
  *end = a->end;
 return 1;
}
