
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;
typedef int netadr_t ;


 int NET_CompareBaseAdrMask (int ,int ,int) ;

qboolean NET_CompareBaseAdr (netadr_t a, netadr_t b)
{
 return NET_CompareBaseAdrMask(a, b, -1);
}
