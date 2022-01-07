
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int pr_err (char*,int ,int ,int ,int ) ;

__attribute__((used)) static void print_memory(u32 *mem, size_t size)
{
 int i;
 for (i = 0; i < size / sizeof(u32); i += 4)
  pr_err("%08x %08x %08x %08x\n", mem[i], mem[i+1],
      mem[i+2], mem[i+3]);
}
