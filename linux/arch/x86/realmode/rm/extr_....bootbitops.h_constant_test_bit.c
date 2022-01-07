
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;



__attribute__((used)) static inline bool constant_test_bit(int nr, const void *addr)
{
 const u32 *p = (const u32 *)addr;
 return ((1UL << (nr & 31)) & (p[nr >> 5])) != 0;
}
