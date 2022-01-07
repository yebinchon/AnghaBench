
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ isexception; int subnet; int ip; } ;
typedef TYPE_1__ serverBan_t ;
typedef scalar_t__ qboolean ;
typedef int netadr_t ;


 scalar_t__ NET_CompareBaseAdrMask (int ,int ,int ) ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 TYPE_1__* serverBans ;
 int serverBansCount ;

__attribute__((used)) static qboolean SV_IsBanned(netadr_t *from, qboolean isexception)
{
 int index;
 serverBan_t *curban;

 if(!isexception)
 {

  if(SV_IsBanned(from, qtrue))
   return qfalse;
 }

 for(index = 0; index < serverBansCount; index++)
 {
  curban = &serverBans[index];

  if(curban->isexception == isexception)
  {
   if(NET_CompareBaseAdrMask(curban->ip, *from, curban->subnet))
    return qtrue;
  }
 }

 return qfalse;
}
