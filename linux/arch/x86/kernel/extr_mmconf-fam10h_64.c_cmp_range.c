
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct range {int start; } ;



__attribute__((used)) static int cmp_range(const void *x1, const void *x2)
{
 const struct range *r1 = x1;
 const struct range *r2 = x2;
 int start1, start2;

 start1 = r1->start >> 32;
 start2 = r2->start >> 32;

 return start1 - start2;
}
