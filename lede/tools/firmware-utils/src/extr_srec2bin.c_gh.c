
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bit32u ;


 int SRLerrorout (char*,char*) ;

bit32u gh(char *cp,int nibs)
{
  int i;
  bit32u j;

  j=0;

  for(i=0;i<nibs;i++)
  {
    j<<=4;
    if ((*cp>='a')&&(*cp<='z')) *cp &= 0x5f;
    if ((*cp>='0')&&(*cp<='9'))
      j += (*cp-0x30);
     else
      if ((*cp>='A')&&(*cp<='F'))
        j += (*cp-0x37);
       else
        SRLerrorout("Bad Hex char", cp);
    cp++;
  }
  return(j);
}
