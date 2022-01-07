
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ byte ;


 int hl_numleafs ;

int HL_CompressVis(byte *vis, byte *dest)
{
 int j;
 int rep;
 int visrow;
 byte *dest_p;

 dest_p = dest;
 visrow = (hl_numleafs + 7)>>3;

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
