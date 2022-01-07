
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_5__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
typedef int qboolean ;
struct TYPE_6__ {scalar_t__ type; int* ip; int* ip6; } ;
typedef TYPE_2__ netadr_t ;
typedef int byte ;
struct TYPE_7__ {scalar_t__ type; int netmask; int addr; } ;


 scalar_t__ NA_IP ;
 scalar_t__ NA_IP6 ;
 scalar_t__ NA_LOOPBACK ;
 TYPE_3__* localIP ;
 int numIP ;
 int qfalse ;
 int qtrue ;

qboolean Sys_IsLANAddress( netadr_t adr ) {
 int index, run, addrsize;
 qboolean differed;
 byte *compareadr, *comparemask, *compareip;

 if( adr.type == NA_LOOPBACK ) {
  return qtrue;
 }

 if( adr.type == NA_IP )
 {




  if(adr.ip[0] == 10)
   return qtrue;
  if(adr.ip[0] == 172 && (adr.ip[1]&0xf0) == 16)
   return qtrue;
  if(adr.ip[0] == 192 && adr.ip[1] == 168)
   return qtrue;

  if(adr.ip[0] == 127)
   return qtrue;
 }
 else if(adr.type == NA_IP6)
 {
  if(adr.ip6[0] == 0xfe && (adr.ip6[1] & 0xc0) == 0x80)
   return qtrue;
  if((adr.ip6[0] & 0xfe) == 0xfc)
   return qtrue;
 }


 for(index = 0; index < numIP; index++)
 {
  if(localIP[index].type == adr.type)
  {
   if(adr.type == NA_IP)
   {
    compareip = (byte *) &((struct sockaddr_in *) &localIP[index].addr)->sin_addr.s_addr;
    comparemask = (byte *) &((struct sockaddr_in *) &localIP[index].netmask)->sin_addr.s_addr;
    compareadr = adr.ip;

    addrsize = sizeof(adr.ip);
   }
   else
   {


    compareip = (byte *) &((struct sockaddr_in6 *) &localIP[index].addr)->sin6_addr;
    comparemask = (byte *) &((struct sockaddr_in6 *) &localIP[index].netmask)->sin6_addr;
    compareadr = adr.ip6;

    addrsize = sizeof(adr.ip6);
   }

   differed = qfalse;
   for(run = 0; run < addrsize; run++)
   {
    if((compareip[run] & comparemask[run]) != (compareadr[run] & comparemask[run]))
    {
     differed = qtrue;
     break;
    }
   }

   if(!differed)
    return qtrue;

  }
 }

 return qfalse;
}
