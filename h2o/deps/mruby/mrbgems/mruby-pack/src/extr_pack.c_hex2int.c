
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int
hex2int(unsigned char ch)
{
  if (ch >= '0' && ch <= '9')
    return ch - '0';
  else if (ch >= 'A' && ch <= 'F')
    return 10 + (ch - 'A');
  else if (ch >= 'a' && ch <= 'f')
    return 10 + (ch - 'a');
  else
    return 0;
}
