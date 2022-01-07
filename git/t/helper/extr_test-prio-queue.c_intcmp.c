
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int intcmp(const void *va, const void *vb, void *data)
{
 const int *a = va, *b = vb;
 return *a - *b;
}
