
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int msr_bits ;
 int pr_cont (char*) ;
 int print_bits (unsigned long,int ,char*) ;
 int print_tm_bits (unsigned long) ;

__attribute__((used)) static void print_msr_bits(unsigned long val)
{
 pr_cont("<");
 print_bits(val, msr_bits, ",");
 print_tm_bits(val);
 pr_cont(">");
}
