
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ngr_checksum {int c0; int c1; } ;



__attribute__((used)) static inline unsigned long
netgear_checksum_fini (struct ngr_checksum * c)
{
 uint32_t b, checksum;

 b = (c->c0 & 65535) + ((c->c0 >> 16) & 65535);
 c->c0 = ((b >> 16) + b) & 65535;
 b = (c->c1 & 65535) + ((c->c1 >> 16) & 65535);
 c->c1 = ((b >> 16) + b) & 65535;
 checksum = ((c->c1 << 16) | c->c0);
 return checksum;
}
