
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int u8 ;
typedef int u32 ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static u8 *test_pack_u32(u8 *dst, u32 val)
{
 memcpy(dst, &val, sizeof(val));
 return dst + sizeof(val);
}
