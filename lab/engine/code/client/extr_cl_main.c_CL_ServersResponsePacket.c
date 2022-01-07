
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int adr; } ;
typedef TYPE_1__ serverInfo_t ;
typedef scalar_t__ qboolean ;
struct TYPE_12__ {int port; int scope_id; int type; int * ip6; int * ip; } ;
typedef TYPE_2__ netadr_t ;
struct TYPE_13__ {char* data; int cursize; } ;
typedef TYPE_3__ msg_t ;
typedef char byte ;
struct TYPE_14__ {int numglobalservers; int numGlobalServerAddresses; TYPE_2__* globalServerAddresses; TYPE_1__* globalServers; } ;


 int BigShort (int) ;
 int CL_InitServerInfo (TYPE_1__*,TYPE_2__*) ;
 int Com_Printf (char*,int,...) ;
 int MAX_GLOBAL_SERVERS ;
 int MAX_SERVERSPERPACKET ;
 int NA_IP ;
 int NA_IP6 ;
 int NET_AdrToStringwPort (TYPE_2__ const) ;
 scalar_t__ NET_CompareAdr (int ,TYPE_2__) ;
 TYPE_4__ cls ;

void CL_ServersResponsePacket( const netadr_t* from, msg_t *msg, qboolean extended ) {
 int i, j, count, total;
 netadr_t addresses[MAX_SERVERSPERPACKET];
 int numservers;
 byte* buffptr;
 byte* buffend;

 Com_Printf("CL_ServersResponsePacket from %s\n", NET_AdrToStringwPort(*from));

 if (cls.numglobalservers == -1) {

  cls.numglobalservers = 0;
  cls.numGlobalServerAddresses = 0;
 }


 numservers = 0;
 buffptr = msg->data;
 buffend = buffptr + msg->cursize;


 do
 {
  if(*buffptr == '\\' || (extended && *buffptr == '/'))
   break;

  buffptr++;
 } while (buffptr < buffend);

 while (buffptr + 1 < buffend)
 {

  if (*buffptr == '\\')
  {
   buffptr++;

   if (buffend - buffptr < sizeof(addresses[numservers].ip) + sizeof(addresses[numservers].port) + 1)
    break;

   for(i = 0; i < sizeof(addresses[numservers].ip); i++)
    addresses[numservers].ip[i] = *buffptr++;

   addresses[numservers].type = NA_IP;
  }

  else if (extended && *buffptr == '/')
  {
   buffptr++;

   if (buffend - buffptr < sizeof(addresses[numservers].ip6) + sizeof(addresses[numservers].port) + 1)
    break;

   for(i = 0; i < sizeof(addresses[numservers].ip6); i++)
    addresses[numservers].ip6[i] = *buffptr++;

   addresses[numservers].type = NA_IP6;
   addresses[numservers].scope_id = from->scope_id;
  }
  else

   break;


  addresses[numservers].port = (*buffptr++) << 8;
  addresses[numservers].port += *buffptr++;
  addresses[numservers].port = BigShort( addresses[numservers].port );


  if (*buffptr != '\\' && *buffptr != '/')
   break;

  numservers++;
  if (numservers >= MAX_SERVERSPERPACKET)
   break;
 }

 count = cls.numglobalservers;

 for (i = 0; i < numservers && count < MAX_GLOBAL_SERVERS; i++) {

  serverInfo_t *server = &cls.globalServers[count];




  for (j = 0; j < count; j++)
  {
   if (NET_CompareAdr(cls.globalServers[j].adr, addresses[i]))
    break;
  }

  if (j < count)
   continue;

  CL_InitServerInfo( server, &addresses[i] );

  count++;
 }


 if ( count >= MAX_GLOBAL_SERVERS && cls.numGlobalServerAddresses < MAX_GLOBAL_SERVERS )
 {

  for (; i < numservers && cls.numGlobalServerAddresses < MAX_GLOBAL_SERVERS; i++)
  {

   cls.globalServerAddresses[cls.numGlobalServerAddresses++] = addresses[i];
  }
 }

 cls.numglobalservers = count;
 total = count + cls.numGlobalServerAddresses;

 Com_Printf("%d servers parsed (total %d)\n", numservers, total);
}
