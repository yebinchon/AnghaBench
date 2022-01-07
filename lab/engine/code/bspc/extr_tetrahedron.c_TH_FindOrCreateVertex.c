
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int TH_CreateVertex (int ) ;
 int TH_FindVertex (int ) ;

int TH_FindOrCreateVertex(vec3_t v)
{
 int vertexnum;

 vertexnum = TH_FindVertex(v);
 if (!vertexnum) vertexnum = TH_CreateVertex(v);
 return vertexnum;
}
