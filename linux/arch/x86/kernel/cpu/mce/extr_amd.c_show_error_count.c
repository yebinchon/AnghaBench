
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct threshold_block {int threshold_limit; int address; int cpu; } ;
typedef int ssize_t ;


 int THRESHOLD_MAX ;
 int rdmsr_on_cpu (int ,int ,int*,int*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_error_count(struct threshold_block *b, char *buf)
{
 u32 lo, hi;

 rdmsr_on_cpu(b->cpu, b->address, &lo, &hi);

 return sprintf(buf, "%u\n", ((hi & THRESHOLD_MAX) -
         (THRESHOLD_MAX - b->threshold_limit)));
}
