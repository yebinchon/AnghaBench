
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int get_unaligned (unsigned long*) ;
 int put_unaligned (int ,unsigned long*) ;

__attribute__((used)) static inline int dwarf_read_addr(unsigned long *src, unsigned long *dst)
{
 u32 val = get_unaligned(src);
 put_unaligned(val, dst);
 return sizeof(unsigned long *);
}
