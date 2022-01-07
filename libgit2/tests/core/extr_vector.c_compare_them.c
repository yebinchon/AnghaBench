
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int compare_them(const void *a, const void *b)
{
 return (int)((intptr_t)a - (intptr_t)b);
}
