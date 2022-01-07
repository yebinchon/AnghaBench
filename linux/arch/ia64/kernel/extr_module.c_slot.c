
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct insn {int dummy; } ;



__attribute__((used)) static inline int
slot (const struct insn *insn)
{
 return (uint64_t) insn & 0x3;
}
