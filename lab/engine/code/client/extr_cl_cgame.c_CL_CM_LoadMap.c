
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CM_LoadMap (char const*,int ,int*) ;
 int qtrue ;

void CL_CM_LoadMap( const char *mapname ) {
 int checksum;

 CM_LoadMap( mapname, qtrue, &checksum );
}
