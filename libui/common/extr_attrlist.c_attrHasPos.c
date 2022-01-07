
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr {size_t start; size_t end; } ;



__attribute__((used)) static int attrHasPos(struct attr *a, size_t pos)
{
 if (pos < a->start)
  return 0;
 return pos < a->end;
}
