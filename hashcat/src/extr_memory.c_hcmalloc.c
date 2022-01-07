
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* hccalloc (size_t const,int) ;

void *hcmalloc (const size_t sz)
{

  void *p = hccalloc (sz, 1);

  return (p);
}
