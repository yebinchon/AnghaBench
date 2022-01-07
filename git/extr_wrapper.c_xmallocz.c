
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* do_xmallocz (size_t,int ) ;

void *xmallocz(size_t size)
{
 return do_xmallocz(size, 0);
}
