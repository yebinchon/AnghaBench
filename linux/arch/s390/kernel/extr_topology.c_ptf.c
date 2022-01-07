
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int ptf(unsigned long fc)
{
 int rc;

 asm volatile(
  "	.insn	rre,0xb9a20000,%1,%1\n"
  "	ipm	%0\n"
  "	srl	%0,28\n"
  : "=d" (rc)
  : "d" (fc) : "cc");
 return rc;
}
