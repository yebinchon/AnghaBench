
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is64bit ;

__attribute__((used)) static int align(int n)
{
 if (is64bit)
  return (n + 0x1fff) & ~0x1fff;
 else
  return (n + 0xfff) & ~0xfff;
}
