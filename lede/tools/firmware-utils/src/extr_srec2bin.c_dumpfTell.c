
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bit32u ;


 scalar_t__ RecLength ;
 scalar_t__ debug ;
 int fOut ;
 int ftell (int ) ;
 int printf (char*,char*,int ,int,int,int ) ;

void dumpfTell(char *s, bit32u Value)
{
    int Length;
    Length = (int) RecLength;
    if (debug)
          printf("[%s  ] ftell()[0x%08lX] Length[0x%4X] Length[%4d] Value[0x%08x]\n",
                s, ftell(fOut), Length, Length, Value);
}
