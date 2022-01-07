
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kprobe_opcode_t ;



__attribute__((used)) static void synthesize_set_arg1(kprobe_opcode_t *addr, unsigned long val)
{




 *addr++ = 0xb8;

 *(unsigned long *)addr = val;
}
