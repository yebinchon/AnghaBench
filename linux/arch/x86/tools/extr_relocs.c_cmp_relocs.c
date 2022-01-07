
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;



__attribute__((used)) static int cmp_relocs(const void *va, const void *vb)
{
 const uint32_t *a, *b;
 a = va; b = vb;
 return (*a == *b)? 0 : (*a > *b)? 1 : -1;
}
