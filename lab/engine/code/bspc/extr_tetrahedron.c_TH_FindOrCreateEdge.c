
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TH_CreateEdge (int,int) ;
 int TH_FindEdge (int,int) ;

int TH_FindOrCreateEdge(int v1, int v2)
{
 int edgenum;

 edgenum = TH_FindEdge(v1, v2);
 if (!edgenum) edgenum = TH_CreateEdge(v1, v2);
 return edgenum;
}
