
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef void* u32 ;
typedef void* u16 ;


 int barrier () ;

__attribute__((used)) static u8 *emit_code(u8 *ptr, u32 bytes, unsigned int len)
{
 if (len == 1)
  *ptr = bytes;
 else if (len == 2)
  *(u16 *)ptr = bytes;
 else {
  *(u32 *)ptr = bytes;
  barrier();
 }
 return ptr + len;
}
