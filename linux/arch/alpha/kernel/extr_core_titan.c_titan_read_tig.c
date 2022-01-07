
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 unsigned long* mk_tig_addr (int) ;

__attribute__((used)) static inline u8
titan_read_tig(int offset, u8 value)
{
 volatile unsigned long *tig_addr = mk_tig_addr(offset);
 return (u8)(*tig_addr & 0xff);
}
