
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* calloc (int,int) ;
 int die (char*) ;
 int memory_limit_check (size_t,int ) ;
 scalar_t__ unsigned_mult_overflows (size_t,size_t) ;

void *xcalloc(size_t nmemb, size_t size)
{
 void *ret;

 if (unsigned_mult_overflows(nmemb, size))
  die("data too large to fit into virtual memory space");

 memory_limit_check(size * nmemb, 0);
 ret = calloc(nmemb, size);
 if (!ret && (!nmemb || !size))
  ret = calloc(1, 1);
 if (!ret)
  die("Out of memory, calloc failed");
 return ret;
}
