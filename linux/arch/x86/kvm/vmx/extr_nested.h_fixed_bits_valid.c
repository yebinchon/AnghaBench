
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static inline bool fixed_bits_valid(u64 val, u64 fixed0, u64 fixed1)
{
 return ((val & fixed1) | fixed0) == val;
}
