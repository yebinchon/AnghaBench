
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* xmalloc (int) ;

int *
int2ptr (int val)
{
  int *ptr = xmalloc (sizeof (int));
  *ptr = val;

  return ptr;
}
