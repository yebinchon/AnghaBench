
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* do_xmalloc (size_t,int ) ;

void *xmalloc(size_t size)
{
 return do_xmalloc(size, 0);
}
