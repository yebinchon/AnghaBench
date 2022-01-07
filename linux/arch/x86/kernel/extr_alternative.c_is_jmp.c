
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline bool is_jmp(const u8 opcode)
{
 return opcode == 0xeb || opcode == 0xe9;
}
