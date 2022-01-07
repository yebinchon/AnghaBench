
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
typedef unsigned long long u32 ;



__attribute__((used)) static u64 mk_cr_64(u64 curr_cr, u32 new_val)
{
 return (curr_cr & ~((1ULL << 32) - 1)) | new_val;
}
