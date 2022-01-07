
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char hexchar(unsigned int b)
{
 return b < 10 ? '0' + b : 'a' + (b - 10);
}
