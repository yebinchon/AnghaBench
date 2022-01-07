
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct aoedev {int lasttag; } ;


 int jiffies ;

__attribute__((used)) static int
newtag(struct aoedev *d)
{
 register ulong n;

 n = jiffies & 0xffff;
 return n |= (++d->lasttag & 0x7fff) << 16;
}
