
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EDGE_HASH_SIZE ;

unsigned AAS_HashEdge(int v1, int v2)
{
 int vnum1, vnum2;

 if (v1 < v2)
 {
  vnum1 = v1;
  vnum2 = v2;
 }
 else
 {
  vnum1 = v2;
  vnum2 = v1;
 }
 return (vnum1 + vnum2) & (EDGE_HASH_SIZE-1);
}
