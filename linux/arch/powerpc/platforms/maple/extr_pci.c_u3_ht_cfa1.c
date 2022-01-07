
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 unsigned long u3_ht_cfa0 (int,int) ;

__attribute__((used)) static unsigned long u3_ht_cfa1(u8 bus, u8 devfn, u8 off)
{
 return u3_ht_cfa0(devfn, off) + (bus << 16) + 0x01000000UL;
}
