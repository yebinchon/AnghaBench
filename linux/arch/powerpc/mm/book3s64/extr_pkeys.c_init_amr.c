
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;


 int pkeyshift (int) ;
 int read_amr () ;
 int write_amr (int) ;

__attribute__((used)) static inline void init_amr(int pkey, u8 init_bits)
{
 u64 new_amr_bits = (((u64)init_bits & 0x3UL) << pkeyshift(pkey));
 u64 old_amr = read_amr() & ~((u64)(0x3ul) << pkeyshift(pkey));

 write_amr(old_amr | new_amr_bits);
}
