
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int parisc32_classify_syscall(unsigned syscall)
{
 switch (syscall) {
 case 129:
  return 2;
 case 128:
  return 3;
 case 130:
  return 5;
 default:
  return 1;
 }
}
