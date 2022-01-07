
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suspend_state_t ;



__attribute__((used)) static int jz4740_pm_enter(suspend_state_t state)
{
 __asm__(".set\tmips3\n\t"
  "wait\n\t"
  ".set\tmips0");



 return 0;
}
