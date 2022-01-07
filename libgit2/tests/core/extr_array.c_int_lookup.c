
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int int_lookup(const void *k, const void *a)
{
 const int *one = (const int *)k;
 int *two = (int *)a;

 return *one - *two;
}
