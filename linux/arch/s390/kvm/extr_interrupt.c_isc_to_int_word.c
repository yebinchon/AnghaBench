
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;



__attribute__((used)) static inline u32 isc_to_int_word(u8 isc)
{
 return ((u32)isc << 27) | 0x80000000;
}
