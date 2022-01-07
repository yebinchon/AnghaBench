
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int write_c0_perflo1 (int) ;
 int write_c0_perflo2 (int) ;

__attribute__((used)) static int loongson3_dying_cpu(unsigned int cpu)
{
 write_c0_perflo1(0xc0000000);
 write_c0_perflo2(0x40000000);
 return 0;
}
