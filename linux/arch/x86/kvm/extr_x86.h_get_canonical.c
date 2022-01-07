
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int int64_t ;



__attribute__((used)) static inline u64 get_canonical(u64 la, u8 vaddr_bits)
{
 return ((int64_t)la << (64 - vaddr_bits)) >> (64 - vaddr_bits);
}
