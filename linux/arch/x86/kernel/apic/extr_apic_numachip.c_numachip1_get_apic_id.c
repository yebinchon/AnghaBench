
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_FAM10H_NODE_ID ;
 int X86_FEATURE_NODEID_MSR ;
 int rdmsrl (int ,unsigned long) ;
 scalar_t__ static_cpu_has (int ) ;

__attribute__((used)) static unsigned int numachip1_get_apic_id(unsigned long x)
{
 unsigned long value;
 unsigned int id = (x >> 24) & 0xff;

 if (static_cpu_has(X86_FEATURE_NODEID_MSR)) {
  rdmsrl(MSR_FAM10H_NODE_ID, value);
  id |= (value << 2) & 0xff00;
 }

 return id;
}
