
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static inline void set_fs(u16 seg)
{
 asm volatile("movw %0,%%fs" : : "rm" (seg));
}
