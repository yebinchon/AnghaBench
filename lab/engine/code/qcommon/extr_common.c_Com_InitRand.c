
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int seed ;
typedef int byte ;


 scalar_t__ Sys_RandomBytes (int *,int) ;
 int srand (unsigned int) ;
 unsigned int time (int *) ;

__attribute__((used)) static void Com_InitRand(void)
{
 unsigned int seed;

 if(Sys_RandomBytes((byte *) &seed, sizeof(seed)))
  srand(seed);
 else
  srand(time(((void*)0)));
}
