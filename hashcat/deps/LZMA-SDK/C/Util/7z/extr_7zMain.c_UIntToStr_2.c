
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void UIntToStr_2(char *s, unsigned value)
{
  s[0] = (char)('0' + (value / 10));
  s[1] = (char)('0' + (value % 10));
}
