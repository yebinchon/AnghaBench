
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static bool ata_sstatus_online(u32 sstatus)
{
 return (sstatus & 0xf) == 0x3;
}
