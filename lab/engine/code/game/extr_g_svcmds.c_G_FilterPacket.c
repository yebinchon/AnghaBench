
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
typedef int byte ;
struct TYPE_4__ {scalar_t__ integer; } ;
struct TYPE_3__ {unsigned int mask; unsigned int compare; } ;


 TYPE_2__ g_filterBan ;
 TYPE_1__* ipFilters ;
 int numIPFilters ;

qboolean G_FilterPacket (char *from)
{
 int i;
 unsigned in;
 byte m[4] = {0};
 char *p;

 i = 0;
 p = from;
 while (*p && i < 4) {
  m[i] = 0;
  while (*p >= '0' && *p <= '9') {
   m[i] = m[i]*10 + (*p - '0');
   p++;
  }
  if (!*p || *p == ':')
   break;
  i++, p++;
 }

 in = *(unsigned *)m;

 for (i=0 ; i<numIPFilters ; i++)
  if ( (in & ipFilters[i].mask) == ipFilters[i].compare)
   return g_filterBan.integer != 0;

 return g_filterBan.integer == 0;
}
