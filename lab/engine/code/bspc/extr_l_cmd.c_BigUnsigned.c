
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int byte ;



unsigned BigUnsigned (unsigned l)
{
 byte b1,b2,b3,b4;

 b1 = l&255;
 b2 = (l>>8)&255;
 b3 = (l>>16)&255;
 b4 = (l>>24)&255;

 return ((unsigned)b1<<24) + ((unsigned)b2<<16) + ((unsigned)b3<<8) + b4;
}
