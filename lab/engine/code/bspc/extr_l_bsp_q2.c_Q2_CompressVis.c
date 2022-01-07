
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ byte ;
struct TYPE_2__ {int numclusters; } ;


 TYPE_1__* dvis ;

int Q2_CompressVis (byte *vis, byte *dest)
{
 int j;
 int rep;
 int visrow;
 byte *dest_p;

 dest_p = dest;

 visrow = (dvis->numclusters + 7)>>3;

 for (j=0 ; j<visrow ; j++)
 {
  *dest_p++ = vis[j];
  if (vis[j])
   continue;

  rep = 1;
  for ( j++; j<visrow ; j++)
   if (vis[j] || rep == 255)
    break;
   else
    rep++;
  *dest_p++ = rep;
  j--;
 }

 return dest_p - dest;
}
