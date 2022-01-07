
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;



short __BigShort (short l)
{
 byte b1,b2;

 b1 = l&255;
 b2 = (l>>8)&255;

 return (b1<<8) + b2;
}
