
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static u32 qcmd_tag_to_mask(u8 tag)
{
 return 0x00000001 << (tag & 0x1f);
}
