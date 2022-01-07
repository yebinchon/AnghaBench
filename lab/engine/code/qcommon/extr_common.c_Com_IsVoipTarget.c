
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int qboolean ;


 int qfalse ;
 int qtrue ;

qboolean Com_IsVoipTarget(uint8_t *voipTargets, int voipTargetsSize, int clientNum)
{
 int index;
 if(clientNum < 0)
 {
  for(index = 0; index < voipTargetsSize; index++)
  {
   if(voipTargets[index])
    return qtrue;
  }

  return qfalse;
 }

 index = clientNum >> 3;

 if(index < voipTargetsSize)
  return (voipTargets[index] & (1 << (clientNum & 0x07)));

 return qfalse;
}
