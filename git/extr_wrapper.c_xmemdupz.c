
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* memcpy (int ,void const*,size_t) ;
 int xmallocz (size_t) ;

void *xmemdupz(const void *data, size_t len)
{
 return memcpy(xmallocz(len), data, len);
}
