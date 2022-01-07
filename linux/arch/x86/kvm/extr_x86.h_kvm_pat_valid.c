
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static inline bool kvm_pat_valid(u64 data)
{
 if (data & 0xF8F8F8F8F8F8F8F8ull)
  return 0;

 return (data | ((data & 0x0202020202020202ull) << 1)) == data;
}
