
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;



__attribute__((used)) static void stack_64w(void)
{
  volatile uint32_t words[64];
  words[0] = 0;
  words[63] = 0;
  (void) words[63];
}
