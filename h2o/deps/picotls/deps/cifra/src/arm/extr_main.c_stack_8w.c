
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;



__attribute__((used)) static void stack_8w(void)
{
  volatile uint32_t words[8];
  words[0] = 0;
  words[7] = 0;
  (void) words[7];
}
