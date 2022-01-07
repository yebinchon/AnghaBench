
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int qboolean ;
typedef size_t netsrc_t ;
struct TYPE_10__ {int type; } ;
typedef TYPE_2__ netadr_t ;
struct TYPE_11__ {int cursize; int data; } ;
typedef TYPE_3__ msg_t ;
struct TYPE_12__ {int send; int get; TYPE_1__* msgs; } ;
typedef TYPE_4__ loopback_t ;
struct TYPE_9__ {int datalen; int data; } ;


 int Com_Memcpy (int ,int ,int ) ;
 int Com_Memset (TYPE_2__*,int ,int) ;
 int MAX_LOOPBACK ;
 int NA_LOOPBACK ;
 TYPE_4__* loopbacks ;
 int qfalse ;
 int qtrue ;

qboolean NET_GetLoopPacket (netsrc_t sock, netadr_t *net_from, msg_t *net_message)
{
 int i;
 loopback_t *loop;

 loop = &loopbacks[sock];

 if (loop->send - loop->get > MAX_LOOPBACK)
  loop->get = loop->send - MAX_LOOPBACK;

 if (loop->get >= loop->send)
  return qfalse;

 i = loop->get & (MAX_LOOPBACK-1);
 loop->get++;

 Com_Memcpy (net_message->data, loop->msgs[i].data, loop->msgs[i].datalen);
 net_message->cursize = loop->msgs[i].datalen;
 Com_Memset (net_from, 0, sizeof(*net_from));
 net_from->type = NA_LOOPBACK;
 return qtrue;

}
