
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
long qftolsse(float f)
{
  long retval;

  __asm__ volatile
  (
    "cvttss2si %1, %0\n"
    : "=r" (retval)
    : "x" (f)
  );

  return retval;
}
