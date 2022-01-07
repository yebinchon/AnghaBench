
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int cmp_ints(const void *v1, const void *v2)
{
 int i1 = *(int *)v1, i2 = *(int *)v2;
 return (i1 < i2) ? -1 : (i1 > i2) ? 1 : 0;
}
