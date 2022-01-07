
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long hpte1_pgsize_encoding(unsigned long pgsize)
{
 return (pgsize == 0x10000) ? 0x1000 : 0;
}
