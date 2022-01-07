
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int CM_PointContents (int ,int ) ;
 int worldmodel ;

int BotImport_PointContents(vec3_t p)
{
 return CM_PointContents(p, worldmodel);
}
