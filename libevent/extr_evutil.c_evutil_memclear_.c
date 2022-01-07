
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int evutil_memset_volatile_ (void*,int ,size_t) ;

void
evutil_memclear_(void *mem, size_t len)
{
 evutil_memset_volatile_(mem, 0, len);
}
