
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * specifyleague_artlist ;
 int trap_R_RegisterShaderNoMip (int ) ;

void SpecifyLeague_Cache( void )
{
 int i;


 for (i=0; ;i++)
 {
  if (!specifyleague_artlist[i])
   break;
  trap_R_RegisterShaderNoMip(specifyleague_artlist[i]);
 }
}
