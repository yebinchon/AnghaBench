
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * specifyserver_artlist ;
 int trap_R_RegisterShaderNoMip (int ) ;

void SpecifyServer_Cache( void )
{
 int i;


 for (i=0; ;i++)
 {
  if (!specifyserver_artlist[i])
   break;
  trap_R_RegisterShaderNoMip(specifyserver_artlist[i]);
 }
}
