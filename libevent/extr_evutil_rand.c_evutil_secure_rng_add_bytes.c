
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MAX ;
 int arc4random_addrandom (unsigned char*,int) ;

void
evutil_secure_rng_add_bytes(const char *buf, size_t n)
{
 arc4random_addrandom((unsigned char*)buf,
     n>(size_t)INT_MAX ? INT_MAX : (int)n);
}
