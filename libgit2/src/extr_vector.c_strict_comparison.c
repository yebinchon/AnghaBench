
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int strict_comparison(const void *a, const void *b)
{
 return (a == b) ? 0 : -1;
}
