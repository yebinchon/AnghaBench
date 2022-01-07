
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u8 ;
typedef int u32 ;


 int memcpy (int *,void*,int) ;

__attribute__((used)) static u8 *ecrdsa_unpack_u32(u32 *dst, void *src)
{
 memcpy(dst, src, sizeof(u32));
 return src + sizeof(u32);
}
