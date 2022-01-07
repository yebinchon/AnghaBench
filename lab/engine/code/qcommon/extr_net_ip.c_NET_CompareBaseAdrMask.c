
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {scalar_t__ type; int ip6; int ip; } ;
typedef TYPE_1__ netadr_t ;
typedef int byte ;


 int Com_Printf (char*) ;
 scalar_t__ NA_IP ;
 scalar_t__ NA_IP6 ;
 scalar_t__ NA_LOOPBACK ;
 scalar_t__ memcmp (int*,int*,int) ;
 int qfalse ;
 int qtrue ;

qboolean NET_CompareBaseAdrMask(netadr_t a, netadr_t b, int netmask)
{
 byte cmpmask, *addra, *addrb;
 int curbyte;

 if (a.type != b.type)
  return qfalse;

 if (a.type == NA_LOOPBACK)
  return qtrue;

 if(a.type == NA_IP)
 {
  addra = (byte *) &a.ip;
  addrb = (byte *) &b.ip;

  if(netmask < 0 || netmask > 32)
   netmask = 32;
 }
 else if(a.type == NA_IP6)
 {
  addra = (byte *) &a.ip6;
  addrb = (byte *) &b.ip6;

  if(netmask < 0 || netmask > 128)
   netmask = 128;
 }
 else
 {
  Com_Printf ("NET_CompareBaseAdr: bad address type\n");
  return qfalse;
 }

 curbyte = netmask >> 3;

 if(curbyte && memcmp(addra, addrb, curbyte))
   return qfalse;

 netmask &= 0x07;
 if(netmask)
 {
  cmpmask = (1 << netmask) - 1;
  cmpmask <<= 8 - netmask;

  if((addra[curbyte] & cmpmask) == (addrb[curbyte] & cmpmask))
   return qtrue;
 }
 else
  return qtrue;

 return qfalse;
}
