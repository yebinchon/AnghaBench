
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int printf (char*,char*,char*) ;

int SRLerrorout(char *c1,char *c2)
{
  printf("\nERROR: %s - '%s'.",c1,c2);
  return(FALSE);
}
