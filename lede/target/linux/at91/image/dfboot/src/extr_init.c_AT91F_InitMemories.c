
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT91F_InitSdram () ;

__attribute__((used)) static void AT91F_InitMemories()
{
 int *pEbi = (int *)0xFFFFFF60;


 pEbi = (int *)0xFFFFFF60;
 *pEbi = 0x00000002;


 pEbi = (int *)0xFFFFFF70;
 *pEbi = 0x00003284;

 AT91F_InitSdram();
}
